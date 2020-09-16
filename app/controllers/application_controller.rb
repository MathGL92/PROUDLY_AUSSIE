class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :current_shopping_cart

  # def current_user
  #   if session[:user_id]
  #     @user = User.find(session[:user_id])
  #   end
  # end

  def current_shopping_cart
    if login?
      @shopping_cart = @user.shopping_cart
    else
      if session[:shopping_cart]
        @shopping_cart = ShoppingCart.find(session[:shopping_cart])
      else
        @shopping_cart = ShoppingCart.create
        session[:shopping_cart] = @shopping_cart.id
      end
    end
  end

  def login?
    !!current_user
  end

  # def authenticated?
  #   redirect_to producers_path unless login?
  # end
end
