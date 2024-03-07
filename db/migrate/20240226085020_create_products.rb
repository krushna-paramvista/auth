class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :product_categor_id
      t.string :name
      t.string :description
      t.decimal :price
      t.references :product_category, null: false, forign_key:true
      t.timestamps
    end
  end
end
