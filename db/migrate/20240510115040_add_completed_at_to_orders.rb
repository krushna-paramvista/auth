class AddCompletedAtToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :completed_at, :datetime
  end
end
