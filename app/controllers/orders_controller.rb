class OrdersController < ApplicationController
  def create
      if params[:shopping_cart]
        shopping_cart = ShoppingCart.find(params[:shopping_cart])
      else
        shopping_cart = ShoppingCart.find(params[:shopping_cart_id])
      end

      @total_price = 0
      shopping_cart.line_items.each do |line_item|
        @total_price += line_item.price
      end

      order  = Order.create!(shopping_cart: shopping_cart, amount: @total_price, state: 'pending')

      shopping_list = shopping_cart.line_items.map do |line_item|
       {
         name: line_item.product.name,
         amount: line_item.product.price_cents,
         currency: 'aud',
         quantity: line_item.amount
       }
      end
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: shopping_list,
        success_url: "http://proudly-aussie.com/#{order_path(order)}",
        cancel_url: new_order_payment_url(order)
      )

      order.update(checkout_session_id: session.id)
       redirect_to new_order_payment_url(order)
    end

    def show
      @order = Order.find(params[:id])
    end
end
