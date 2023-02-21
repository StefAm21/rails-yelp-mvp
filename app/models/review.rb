class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  RANGE = (0..5)
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: RANGE }
end
