class CreateFilmGenres < ActiveRecord::Migration[7.2]
  def change
    create_table :film_genres do |t|
      t.references :film, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
