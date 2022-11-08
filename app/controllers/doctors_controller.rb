class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show]

  def index
    render json: Doctor.select(
      :id, :docname, :name
    ).all
  end

  def show
    render json: @doctor
  end

  private

  def set_doctor
    @doctor = Doctor.select(
      :id, :docname, :name
    ).find(params[:id])
  end
end