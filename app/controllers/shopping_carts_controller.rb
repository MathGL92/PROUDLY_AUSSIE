class ShoppingCartsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    # @line_items = @shopping_cart.line_items
  end
end
