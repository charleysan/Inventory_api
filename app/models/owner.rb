class Owner < ApplicationRecord
  validates :email, presence:true, uniqueness:true
  has_secure_password
  has_many :items
  validates :role, inclusion: { in: %w[user admin] }


  def admin?
    role == 'admin'
  end

  def user?
    role == 'user'
  end
end
