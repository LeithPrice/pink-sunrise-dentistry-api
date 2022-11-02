class UsersController < ApplicationController
    before_action :authorize_request, except: :create
    before_action :find_user, except: [:create, :index]
    # before_action :find_user, only: [:show, :update, :destroy]

    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def show
        render json: @user, status: :ok
    end

    def create
        @user = User.create(user_params)
        if @user.save
            token = JsonWebToken.encode(user_id: @user.id)
            render json: {username: @user.username, token: token}, status: :created
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        unless @user.update(user_params)
            render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def destroy
        @user.destroy
    end

    private
    
    def find_user
        @user = User.find_by_username!(params[:username])
    rescue ActiveRecord::RecordNotFound
        render json: { errors: 'User not found'}, status: :not_found
    end

    def user_params
        params.permit(
            :name, :username, :email, :doctor, :admin, :password, :password_confirmation
        )
    end
end
