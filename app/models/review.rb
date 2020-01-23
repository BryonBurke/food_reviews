class Review < ApplicationRecord
  belongs_to :product

  validates :author, presence: true
  validates_length_of :name, minimum: 50 maximum: 250 
  validates :product_id, presence: true
end
