class Order < ApplicationRecord
  belongs_to :shopping_cart
  monetize :amount_cents
  
  def sum_price
    self.shopping_cart.line_items.sum do |item|
      item.amount * item.product.price
    end
    #@total_price = @order.shopping_cart.line_items.map(&:sum).inject(:+)
  end
end
