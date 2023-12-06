class RenameUpdateToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :update, :renewal_date
  end
end
