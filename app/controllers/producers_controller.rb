class ProducersController < ApplicationController
  before_action :set_producer, only: [:show]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def new
    @producer = Producer.new
    @producer.user = current_user
  end

  def create
    @producer = Producer.new(producer_params)
    @producer.user = current_user
    if @producer.save
      redirect_to producer_confirmation_path
    else
      render :new
    end
  end

  def index
    if params[:query].present?
      @producers = Producer.global_search("#{params[:query]}")
    elsif params[:tag_name].present?
      @producers = Producer.with_tag(params[:tag_name])
    else
      @producers = Producer.all
    end
    @markers = @producers.geocoded.map do |producer|
      {
        lat: producer.latitude,
        lng: producer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { producer: producer }),
        #image_url: helpers.asset_url("logo.png") # asset_url must be in rails code base not DB
        # get cloudinary URL for producer

        image_url: producer.photo.service_url
      }
    end
  end

  def show
    @markers =[{
        lat: @producer.latitude,
        lng: @producer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { producer: @producer }),
        image_url: @producer.photo.service_url
      }]
  end

  private

  def set_producer
    @producer = Producer.find(params[:id])
  end

  def producer_params
    params.require(:producer).permit(:name, :ABN, :address, :company_name, :photo, :bg_photo, :introduction, :tagline)
  end
end
