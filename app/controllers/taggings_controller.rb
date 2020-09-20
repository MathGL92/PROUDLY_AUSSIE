class TaggingsController < ApplicationController
  def new
    @producer = Producer.find(params[:producer_id]) 
    @product = Product.find(params[:product_id])
    @tagging = Tagging.new
  end

  def create
    @product = Product.find(params[:product_id])
    # Note that .where() can work with and Array!
    @tags = Tag.where(id: params[:tagging][:tag_id])
    # We are iterating in case to create all the tags the user selected
    @tags.each do |tag|
      @tagging = Tagging.new(product: @product, tag: tag)
      @tagging.save
    end
    redirect_to "/dashboard"
  end
end
