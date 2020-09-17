class ShoppingCartsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:show]
  def show
    @shopping_cart = current_user.shopping_cart
  end
end
