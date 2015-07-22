class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
 
  def show
    @booking = Booking.find(params[:id])
  end
 
  def new
    @booking = Booking.new
  end
 
  def edit
    @booking = Booking.find(params[:id])
  end
 
  def create
    @booking = Booking.new(booking_params)
 
    @booking.save
    redirect_to @booking
  end
 
  def update
    @booking = Booking.find(params[:id])
 
    @booking.update(booking_params)
    redirect_to @booking
  end
 
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
 
    redirect_to bookings_path
  end
 
  private
    def booking_params
      params.require(:booking).permit(:student, :question, :additional_comment)
    end
end