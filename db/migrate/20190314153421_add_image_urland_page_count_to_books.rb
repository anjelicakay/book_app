class AddImageUrlandPageCountToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :image_url, :string
    add_column :books, :page_count, :integer
  end
end
