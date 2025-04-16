class Description < ApplicationRecord
  belongs_to :item

  validates :quantity, presence: true, numericality: { only_integer: true }

  validates :description, presence: true
end
