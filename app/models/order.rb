class Order < ApplicationRecord
  belongs_to :shopping_cart
  monetize :amount_cents
end
