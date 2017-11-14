class RidesController < ApplicationController

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(:user_id => params[:user_id], :attraction_id => params[:attraction_id])
    @ride.save
    @ride.take_ride
    redirect_to user_path(@ride.user)
  end
end
