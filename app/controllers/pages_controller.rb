class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :new_producer ]

  def home
    @tags = Tag.all
  end

  def new_producer; end
end
