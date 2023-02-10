class Movie < ApplicationRecord
  has_one_attached :cover_image
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :actors
end
