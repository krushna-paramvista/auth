class RenameProductCategorIdToProductCategoryId < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :product_categor_id, :product_category_id
  end
end


