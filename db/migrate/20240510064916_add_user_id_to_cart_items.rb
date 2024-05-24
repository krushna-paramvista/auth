class AddUserIdToCartItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :cart_items, :user, null: true, foreign_key: true
  end
end
