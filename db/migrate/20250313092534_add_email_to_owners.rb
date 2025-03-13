class AddEmailToOwners < ActiveRecord::Migration[8.0]
  def change
    add_column :owners, :email, :string
    add_column :owners, :password_digest, :string
    add_column :owners, :role, :string, default: 'user'
  end
end
