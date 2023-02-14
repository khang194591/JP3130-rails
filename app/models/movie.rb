class Movie < ApplicationRecord
  has_one_attached :cover_image
  has_many :movie_review, ->{ order('created_at DESC') }, :class_name => 'MovieReview'
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :directors
end
