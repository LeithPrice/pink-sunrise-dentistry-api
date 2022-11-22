class BookingsController < ApplicationController
before_action :authorize_request, except: :index
before_action :set_bookings, only: %i[index]
before_action :booking_params, only: %i[create]
before_action :set_booking_delete, only: %i[destroy]

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

def show
    render json: @booking
end

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

#  def show
#     render json: @booking
# end



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

def show
  booking = Booking.where(user_id: @current_user.id)
  render json: { success: true,
                 booking: booking.as_json }
end

def destroy
  @bookings.delete
  render json: 204
end

private

def set_bookings
  @bookings = if params[:doctor_id]
                Booking.where(doctor_id: params[:doctor_id], booked: false)
              else
                Booking.where(user_id: @current_user.id)
              end
end

def booking_params
            params.require(:booking).permit(:label, :user_id, :atend_id, :doctor_id, :hour, :minutes, :booked, :date)
        end
end

def set_booking_delete
    begin
    @bookings = Booking.find(params[:id])
    rescue
        render json: {error: "Prediction not found"}, status: 404
    end
end

