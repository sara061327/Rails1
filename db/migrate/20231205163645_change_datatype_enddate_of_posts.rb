class ChangeDatatypeEnddateOfPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :enddate, :date
  end
end
