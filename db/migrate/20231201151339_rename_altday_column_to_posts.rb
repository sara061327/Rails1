class RenameAltdayColumnToPosts < ActiveRecord::Migration[6.1]
  def change
      rename_column :posts, :altday, :allday
  end
end
