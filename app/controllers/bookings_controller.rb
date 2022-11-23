class BookingsController < ApplicationController

   # these are methods that are run subject to specific fetch statements
  before_action :authorize_request, except: %i[index]
  before_action :set_bookings, only: %i[index]
  before_action :booking_params, only: %i[create]
  before_action :set_booking_delete, only: %i[destroy]

  # this method decides if the parmas are doctor_id or not and renders the @booking variable as json
  def index
   if params[:doctor_id]
     render json:
        {
         success: true,
         booking: @bookings.as_json(
            only: %i[id date label hour minutes atend_id]
          )
        }
   else
     render json:
        {
        success: true,
        booking: @bookings.as_json(
          only: %i[id date label hour minutes doctor_id atend_id]
        )
      }
    end
  end

  # this method creates a new booking, subject to the :doctorid and uses the current user, and booking params and attaches it to the variabel @booking.
  # it then calls BookingsMailer to send a confirmation email to the user email.
  def create
            if params[:doctor_id]
                @booking = @current_user.bookings.create(booking_params)
                
                BookingsMailer.booking_confirmation(@booking, @current_user).deliver_now
                if @booking.errors.any?
                render json: @booking.errors, status: :unprocessable_entity
                else
                render json: @booking, status: 201
                end
            else
                render json: @booking, status: 201
            end
  end

  # this method uses params id to find a Booking and updates it
  def update
    booking = Booking.find(params[:id])
    booking.user_id = @current_user.id
    booking.booked = true
    if booking.save
     render json: { success: true }
   else
     render json: { success: false }
    end
  end

  # this method searches booking tbale for current user and renders their bookings
  def show
   booking = Booking.where(user_id: @current_user.id)
    render json: { success: true,
                 booking: booking.as_json }
  end

  # this method destroys the booking currently in variable @bookings
  def destroy
    @bookings.delete
    render json: 204
  end

  # private is an access modifier, used so the below methods can only be called within this class.
  private

  # this method sets the @booking variabel subject to if params are doctor:id or otherwise
  def set_bookings
    @bookings = if params[:doctor_id]
                 Booking.where(doctor_id: params[:doctor_id], booked: false)
                else
                 Booking.where(user_id: @current_user.id)
               end
  end

  # this method  sets what params are permitted for booking when called
  def booking_params
            params.require(:booking).permit(:label, :user_id, :atend_id, :doctor_id, :hour, :minutes, :booked, :date)
        end
    end

  #  this method is set the variable @bookings against the current params:id
  def set_booking_delete
      begin
      @bookings = Booking.find(params[:id])
      rescue
      render json: {error: "Prediction not found"}, status: 404
      end
  end

