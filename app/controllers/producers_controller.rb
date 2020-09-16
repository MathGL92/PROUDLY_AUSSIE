class ProducersController < ApplicationController
  before_action :set_producer, only: [:show]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def new
    @producer = Producer.new
  end


  def index
    @producers = Producer.all
    @markers = @producers.geocoded.map do |producer|
      {
        lat: producer.latitude,
        lng: producer.longitude,
        # infoWindow: render_to_string(partial: "info_window", locals: { producer: producer }),
        # image_url: helpers.asset_url('logo.png')
      }
    end
  end

  def show; end

  private

  def set_producer
    @producer = Producer.find(params[:id])
  end

  def producer_params
    params.require(:producer).permit(:name, :ABN, :address, :company_name, :photo, :bg_photo)
  end
end
