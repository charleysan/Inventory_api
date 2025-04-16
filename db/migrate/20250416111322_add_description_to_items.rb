class AddDescriptionToItems < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :descriptions, :items, column: :item_id
  end
end
