class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.string :type_name
      t.integer :condition

      t.timestamps
    end
  end
end
