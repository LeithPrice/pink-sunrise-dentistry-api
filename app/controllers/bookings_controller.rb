class BookingsController < ApplicationController
    before_action :authorize_request
    before_action :set_booking, only: [:show, :update, :destroy]
    before_action :booking_params, only: %i[create]

    def index

        if params[:doctor]
            puts "Searching for #{params[:doctor]}"
            @bookings = @current_user.bookings.find_by_category(params[:doctor])
            if @bookings.count == 0
                return render json: {error: "No booking of that doctor"}, status: 404
            end
        else
            @bookings = @current_user.bookings.all
        end
        render json: @bookings
    end

    def create
        @booking = @current_user.bookings.create(booking_params)
        if @booking.errors.any?
            render json: @booking.errors, status: :unprocessable_entity
        else
            render json: @booking, status: 201
        end
    end

    def show
        render json: @booking
    end

    def update
        @booking.update(booking_params)
        if @booking.errors.any?
            render json: @booking.errors, status: :unprocessable_entity
        else
            render json: @booking, status: 201
        end
    end

    def destroy
        @booking.delete
        render json: 204
    end

    private
    def booking_params
        params.require(:booking).permit(:label, :user_id, :atend_id, :doctor_id, :hour, :minutes, :booked)
    end

    def set_booking
        begin
        @booking = Booking.find(params[:id])
        rescue
            render json: {error: "booking not found"}, status: 404
        end
    end
end




# before_action :set_bookings, only: %i[index]
# before_action :booking_params, only: %i[create]

# def index
#   if params[:doctor_id]
#     render json:
#       {
#         success: true,
#         booking: @bookings.as_json(
#           only: %i[id label hour minutes atend_id]
#         )
#       }
#   else
#     render json:
#       {
#         success: true,
#         booking: @bookings.as_json(
#           only: %i[id label hour minutes doctor_id atend_id]
#         )
#       }
#   end
# end

# def update
#   booking = Booking.find(params[:id])
#   booking.user_id = current_user.id
#   booking.booked = true
#   if booking.save
#     render json: { success: true }
#   else
#     render json: { success: false }
#   end
# end

# def show
#   booking = Booking.where(user_id: current_user.id)
#   render json: { success: true,
#                  booking: booking.as_json }
# end

# private

# def set_bookings
#   @bookings = if params[:doctor_id]
#                 Booking.where(doctor_id: params[:doctor_id], booked: false)
#               else
#                 Booking.where(user_id: current_user.id)
#               end
# end

# def booking_params
#   params.require(:booking).permit(:booking, :id)
# end
# end


