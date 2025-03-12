class Item < ApplicationRecord
  belongs_to: owners
  belongs_to: stores
end
