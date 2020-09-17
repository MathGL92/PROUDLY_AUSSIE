class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :new_producer ]

  def home
    @tags = Tag.all
  end

  def new_producer; end

  def producer_confirmation
    @user = current_user
    @producer = Producer.find(@user.producer.id)

    redirect_to "/dashboard" if @producer.approved
  end

end
