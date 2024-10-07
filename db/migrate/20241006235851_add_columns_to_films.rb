class AddColumnsToFilms < ActiveRecord::Migration[7.2]
  def change
    add_column :films, :sinopsis, :string
    add_column :films, :country, :string
  end
end
