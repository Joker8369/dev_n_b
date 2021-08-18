class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @developer = Developer.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.customer = current_user
    @booking.developer = @developer
    if @booking.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.delete
  end

  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on)
  end
end
