class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.float :price
      t.integer :amount
      t.references :products, null: false, foreign_key: true
      t.references :shopping_carts, null: false, foreign_key: true

      t.timestamps
    end
  end
end
