class Film < ApplicationRecord
  enum :status, { draft: 0, published: 2 }
  has_many :film_directors
  has_many :directors, through: :film_directors
  has_many :film_genres
  has_many :genres, through: :film_genres
  has_many :film_countries
  has_many :countries, through: :film_countries
end
