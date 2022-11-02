class DoctorsController < ApplicationController

    def index
        @doctors = @current_user.doctors.all
        render json: @doctors
    end


end
