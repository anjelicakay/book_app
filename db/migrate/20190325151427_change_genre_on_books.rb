class ChangeGenreOnBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :genre, :string
  end
end
