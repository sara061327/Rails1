class PostsController < ApplicationController
  def index
   @posts = Post.all
   @schedule_total = Post.all.count
  end

  def new
    @post = Post.new

  end
  def create
    @post = Post.new(params.require(:post).permit(:schedule_id, :title, :startdate, :enddate, :allday, :update_date, :memo))
    if @post.save
      flash[:notice] = "登録完了しました"
      redirect_to :posts
    else
      flash[:notice] = "スケジュールを登録できませんでした"
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
    if @post.update(params.require(:post).permit(:schedule_id, :title, :startdate, :enddate, :allday, :renewal_date, :memo,))
      flash[:notice] = "ユーザーIDが「#{@post.schedule_id}」の情報を更新しました"
      redirect_to :posts
    else
      flash[:notice] = "スケジュールを更新できませんでした"
      render "edit"
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "削除しました"
    redirect_to :posts
  end

end
