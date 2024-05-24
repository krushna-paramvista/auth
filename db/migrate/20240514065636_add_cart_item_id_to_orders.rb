class AddCartItemIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :cart_item, foreign_key: true
  end
end
