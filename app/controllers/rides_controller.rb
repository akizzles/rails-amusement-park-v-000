class RidesController < ApplicationController
  def new
    @ride = Ride.create(user_id: params[:user_id], attraction_id: params[:attraction_id])
    @ride.save
    @alert = @ride.take_ride
    redirect_to user_path(@ride.user, alert: @alert)
  end



end
