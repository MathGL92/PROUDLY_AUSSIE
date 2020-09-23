class ShoppingCart::LineItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :destroy, :increase_line_item_amount, :decrease_line_item_amount]
  before_action :set_line_item, only: [:destroy, :increase_line_item_amount, :decrease_line_item_amount]
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

  def increase_line_item_amount
    @line_item.amount += 1
    if @line_item.save
      redirect_to shopping_carts_path
    else
      raise
    end
  end

  def decrease_line_item_amount
    @line_item.amount -= 1
    if @line_item.save
      redirect_to shopping_carts_path
    else
      raise
    end
  end

  def destroy
    @line_item.destroy
    redirect_to  shopping_carts_path
  end

  private

  def set_line_item
    @line_item = LineItem.find(params[:id])
  end
end
