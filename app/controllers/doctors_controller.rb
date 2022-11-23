class DoctorsController < ApplicationController

  # these are methods that are run subject to specific fetch statements
  before_action :set_doctor, only: %i[show]
  before_action :set_bookings, only: %i[bookings]

  # this method renders all Doctors and attached information in the doctor table
  def index
    render json: Doctor.select(
      :id, :docname, :name
    ).all
  end

  # this method renders whatever the content of @doctor is
  def show
    render json: @doctor
  end

  # this method 
  def bookings
    pp @bookings
    render json: @bookings
  end

  # private is an access modifier, used so the below methods can only be called within this class.
  private

  # this method  set the content to the variable @doctor subjec to the params[:id] input
  def set_doctor
    @doctor = Doctor.select(
      :id, :docname, :name
    ).find(params[:id])
  end

  # thsi method  sets the variable @bookings with params:id. and checks if it is either docto_id or user_id
  def set_bookings
    @bookings = if params[:id]
                Booking.where(doctor_id: params[:id], booked: true)
                else
                Booking.where(user_id: @current_user.id)
                end
  end
end