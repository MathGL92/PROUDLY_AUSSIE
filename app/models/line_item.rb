class LineItem < ApplicationRecord
  belongs_to :products
  belongs_to :shopping_carts
end
