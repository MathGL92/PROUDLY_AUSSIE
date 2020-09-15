class ShoppingCart < ApplicationRecord
  belongs_to :users
  has_many :line_items
end
