class RenameUserIdColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :user_id, :schedule_id
  end
end
