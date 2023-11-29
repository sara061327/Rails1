class PostsController < ApplicationController
  def index
  @posts = Post.all
  end

  def new
  @post = Post.new 
  end
  
  def create
    @post = Post.new(params.require(:post).permit(:user_id, :title, :startdate, :enddate, :allday, :update_date,))
    if @post.save
      flash[:notice] = "登録完了しました"
      redirect_to :posts
    else
      render "new"
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:user_id, :title, :startdate, :enddate, :allday, :renewal_date))
      flash[:notice] = "ユーザーIDが「#{@post.id}」の情報を更新しました"
      redirect_to :posts
    else
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "削除しました"
    redirect_to :posts
  end
end
