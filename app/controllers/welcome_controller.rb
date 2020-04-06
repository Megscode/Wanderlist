class WelcomeController < ApplicationController
  def index
  end

  def nearby
    @lat = params[:lat]
    @lng = params[:lng]
   end
   
end
