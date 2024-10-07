class ChangeReleaseDateToReleaseYearInFilm < ActiveRecord::Migration[7.2]
  def change
    rename_column :films, :release_date, :release_year
    change_column :films, :release_year, :integer
  end
end
