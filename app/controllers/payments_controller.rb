class PaymentsController < ApplicationController
  def new
    @test = "Test"
    @order = Order.find(params[:order_id])
  end
end
