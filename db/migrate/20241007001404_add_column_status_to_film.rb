class AddColumnStatusToFilm < ActiveRecord::Migration[7.2]
  def change
    add_column :films, :status, :integer
  end
end
