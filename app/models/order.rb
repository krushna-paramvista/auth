class Order < ApplicationRecord
  belongs_to :user
  has_many :cart_items

  # Scope to filter orders that are in progress
  scope :in_progress, -> { where(completed_at: nil) }


  # Calculate the subtotal for the order
  # Calculate the subtotal for the order
def subtotal
  sum = cart_items.sum do |item|
    if item.product.price && item.quantity
      item.product.price * item.quantity
    else
      0
    end
  end
  puts "Subtotal calculation: #{sum}" # Add this line for debugging
  sum
end


  # Calculate the tax amount for the order
  def tax_amount
    # Example: Applying a fixed tax rate of 10%
    tax_rate = 0.1
    subtotal * tax_rate
  end

  # Calculate the total amount for the order (subtotal + tax)
  def total
    subtotal + tax_amount
  end
end
