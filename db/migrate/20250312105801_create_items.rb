class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :owner_id
      t.integer :museum_id

      t.timestamps
    end
  end
end
