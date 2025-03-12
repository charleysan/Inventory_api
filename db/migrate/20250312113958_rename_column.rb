class RenameColumn < ActiveRecord::Migration[8.0]
  def change
    rename_column :items, :museum_id, :store_id
  end
end
