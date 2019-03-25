class OneNameOnAuthor < ActiveRecord::Migration[5.2]
  def change
    remove_column :authors, :first_name, :string
    remove_column :authors, :last_name, :string
    add_column :authors, :name, :string
    remove_column :authors, :biography, :text
  end
end
