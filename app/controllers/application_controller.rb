class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :current_shopping_cart

  def user_current
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def current_shopping_cart
    if login?
    # if user_signed_in?
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
    !!user_current
  end

  # def authenticated?
  #   redirect_to producers_path unless login?
  # end
end
