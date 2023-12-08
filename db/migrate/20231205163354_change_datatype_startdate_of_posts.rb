class ChangeDatatypeStartdateOfPosts < ActiveRecord::Migration[6.1]
  def change
      change_column :posts, :startdate, :date
  end
end
