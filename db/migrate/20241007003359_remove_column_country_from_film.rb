class RemoveColumnCountryFromFilm < ActiveRecord::Migration[7.2]
  def change
    remove_column :films, :country, :string
  end
end
