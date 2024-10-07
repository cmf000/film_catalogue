class FilmCountry < ApplicationRecord
  belongs_to :film
  belongs_to :country
end
