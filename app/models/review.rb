class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5) }
  validates :content, presence: true
end