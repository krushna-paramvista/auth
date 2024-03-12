class Product < ApplicationRecord
  has_one_attached :image
  belongs_to :product_category
  validates :product_category, presence: true
end
