class ProductsController < ApplicationController
  before_action :set_producer, only: [:new, :create, :edit, :update, :destroy]

  
  def new
    @product = Product.new
    @tagging = Tagging.new
  end

  def create
    @product = Product.new(product_params)
    @product.producer_id = @producer.id
    @tags = Tag.where(id: params[:product][:tags])
      @tags.each do |tag|
        tagging = Tagging.new(product: @product, tag: tag)
        tagging.save
      end
    if @product.save
      redirect_to dashboard_index_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])

  end

  def update
    @product = Product.find(params[:id])
    @product.producer_id = @producer.id
    if @product.update(product_params)
      redirect_to dashboard_index_path
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy!
    redirect_to dashboard_index_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :producer_id, :photo)
  end

  def set_producer
    @producer = current_user.producer
  end
end
