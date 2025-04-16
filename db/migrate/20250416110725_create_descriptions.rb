class CreateDescriptions < ActiveRecord::Migration[8.0]
  def change
    create_table :descriptions do |t|
      t.integer :quantity
      t.text :description
      t.integer :item_id, null: false

      t.timestamps
    end
  end
end
