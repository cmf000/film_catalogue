class Director < ApplicationRecord
  has_many :film_directors
  has_many :films, through: :film_directors
end
