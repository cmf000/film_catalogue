class Genre < ApplicationRecord
  has_many :film_genres
  has_many :films, through: :film_genres
end
