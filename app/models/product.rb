class Product < ApplicationRecord
  belongs_to :product_category
  validates :product_category, presence: true
end
