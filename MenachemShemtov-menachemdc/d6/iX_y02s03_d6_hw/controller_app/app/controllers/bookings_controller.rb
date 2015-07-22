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
	 
	  if @booking.save
	    redirect_to @booking
	  else
	    render 'new'
	  end
	end

	def update
	  @booking = Booking.find(params[:id])
	 
	  if @booking.update(booking_params)
	    redirect_to @booking
	  else
	    render 'edit'
	  end
# destory function isnt working. Says controller not found?
	def destroy
	  @booking = Booking.find(params[:id])
	  @booking.destroy
	 
	  redirect_to bookings_path
	end
end
 
private
# why do we make this private?
  def booking_params
    params.require(:booking).permit(:student, :question, :additional_comments)
  end
end