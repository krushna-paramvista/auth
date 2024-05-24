class RenameProductCategorIdToProductCategoryId < ActiveRecord::Migration[7.0]
  def change
    unless column_exists?(:products, :product_category_id)
      rename_column :products, :product_categor_id, :product_category_id
    end
  end
end
