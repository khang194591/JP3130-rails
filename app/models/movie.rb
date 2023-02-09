class Movie < ApplicationRecord
  has_one_attached :cover_image
  belongs_to :category
end
