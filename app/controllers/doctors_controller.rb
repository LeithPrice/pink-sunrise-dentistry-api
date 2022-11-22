class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show]
  before_action :set_bookings, only: %i[bookings]

  def index
    render json: Doctor.select(
      :id, :docname, :name
    ).all
  end

  def show
    render json: @doctor
  end

  def bookings
    pp @bookings
    render json: @bookings
  end

  private

  def set_doctor
    @doctor = Doctor.select(
      :id, :docname, :name
    ).find(params[:id])
  end


def set_bookings
  @bookings = if params[:id]
                Booking.where(doctor_id: params[:id], booked: true)
              else
                Booking.where(user_id: @current_user.id)
              end
end
end