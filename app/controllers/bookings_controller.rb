class BookingsController < ApplicationController
    def index
        @booking = Booking.all
        render json: @booking
    end

    def create
        @booking = Booking.create(booking_params)
        if @booking.errors.any?
            render json: @booking.errors, status: :unprocessible_entity
        else
            render json: @booking, status: 201
        end
    end

    private
    def booking_params
        params.require(:booking).permit(:appointment_time, :doctor_id)
    end
end
