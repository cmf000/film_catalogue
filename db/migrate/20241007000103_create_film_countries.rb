class CreateFilmCountries < ActiveRecord::Migration[7.2]
  def change
    create_table :film_countries do |t|
      t.references :film, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
