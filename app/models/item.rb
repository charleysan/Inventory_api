class Item < ApplicationRecord
  belongs_to :owner
  belongs_to :store
end
