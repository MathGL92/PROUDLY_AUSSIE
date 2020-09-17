class ShoppingCart::LineItemsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @line_item = LineItem.new
    @line_item.product = @product
    @line_item.price = @product.price
    @line_item.shopping_cart = current_user.shopping_cart
    @line_item.amount = 1
    if @line_item.save
      redirect_to shopping_carts_path
    else
      raise
    end
  end
end
