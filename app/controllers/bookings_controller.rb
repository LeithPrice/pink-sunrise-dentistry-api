class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :update, :destroy]
    
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

    def show
        render json: @booking
    end

    def update
        @booking.update(booking_params)
        if @booking.errors.any?
            render json: @booking.errors, status: :unprocessible_entity
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
        params.require(:booking).permit(:appointment_time, :doctor_id)
    end

    def set_booking
        begin
            @booking = Booking.find(params[:id])
        rescue 
            render json: {error: "Booking not found"}, status: 404
        end
    end
end
