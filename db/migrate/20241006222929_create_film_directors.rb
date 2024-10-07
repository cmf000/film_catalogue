class CreateFilmDirectors < ActiveRecord::Migration[7.2]
  def change
    create_table :film_directors do |t|
      t.references :film, null: false, foreign_key: true
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
