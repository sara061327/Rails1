class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :post do |t|
      t.integer :user_id
      t.string :title
      t.integer :startdate
      t.integer :enddate
      t.integer :allday
      t.integer :update

      t.timestamps
    end
  end
end
