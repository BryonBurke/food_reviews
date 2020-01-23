class Review < ApplicationRecord
  belongs_to :product

  validates :author, presence: true

  validates :product_id, presence: true
end
