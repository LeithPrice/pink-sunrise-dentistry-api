class DoctorsController < ApplicationController
    before_action :set_doctor, only: [:show, :update, :destroy]

    def index
      @doctors = Doctor.all
  
      if params[:keyword] && params[:keyword] != ""
        @doctors = @doctors.where("title ILIKE ?", "%#{params[:keyword]}%")      
      end
          
      render json: @doctors
    end
  
    def create
      @doctor = Doctor.create(doctor_params)
      if @doctor.errors.any?
        render json: @doctor.errors, status: :unprocessable_entity
      else
        render json: @doctor, status: 201
      end
    end
  
    def show
      render json: @doctor
    end
  
    def update
      @doctor.update(doctor_params)
      if @doctor.errors.any?
          render json: @doctor.errors, status: :unprocessable_entity
      else 
          render json: @doctor, status: 201
      end
    end
  
    def destroy
      @doctor.delete
      render json: 204
    end
  
    private
  
    def doctor_params
      params.permit(:name, :doctor_id)
    end
  
    def set_doctor
      begin
        @doctor = Doctor.find(params[:id])
      rescue
        render json: { error: "Doctor not found" }, status: 404
      end
    end
  end
