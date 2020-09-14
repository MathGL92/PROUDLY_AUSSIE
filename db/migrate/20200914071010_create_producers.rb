class CreateProducers < ActiveRecord::Migration[6.0]
  def change
    create_table :producers do |t|
      t.string :name
      t.string :address
      t.text :introduction
      t.string :ABN
      t.string :company_name
      t.boolean :approved
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
