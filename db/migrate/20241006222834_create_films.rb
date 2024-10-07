class CreateFilms < ActiveRecord::Migration[7.2]
  def change
    create_table :films do |t|
      t.string :title
      t.date :release_date

      t.timestamps
    end
  end
end
