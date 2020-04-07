class WelcomeController < ApplicationController
  def index
  end

  def nearby
    @lat = params[:lat].to_f
    @lng = params[:lng].to_f
    @tolerance = 0.031851 
    @routes = Route.where(
      "starting_lat > ? AND starting_lat < ?", @lat-@tolerance, @lat+@tolerance).where("starting_lng > ? AND starting_lng < ?", @lng-@tolerance, @lng+@tolerance)
   end
   
end
