class Country < ApplicationRecord
  has_many :film_countries
  has_many :films, through: :film_countries
end
