class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :status

      t.timestamps
    end
  end
end
