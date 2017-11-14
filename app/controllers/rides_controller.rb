class RidesController < ApplicationController

  # def new
  #   @ride = Ride.new
  # end

  def new
    @ride = Ride.create(:user_id => params[:user_id], :attraction_id => params[:attraction_id])
    @ride.take_ride
    redirect_to "/users/#{current_user.id}"
  end
end
