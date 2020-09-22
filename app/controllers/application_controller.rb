class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :current_shopping_cart, unless: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name])
  end

  def user_current
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

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
    !!user_current
  end
end
