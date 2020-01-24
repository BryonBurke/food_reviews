class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  scope :three_most_recent, -> { order(created_at: :desc).limit(10)}

  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true
end
