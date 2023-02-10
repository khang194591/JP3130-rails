class Movie < ApplicationRecord
  has_one_attached :cover_image
  has_many :movie_review, ->{ order('created_at DESC') }, :class_name => 'MovieReview'
end
