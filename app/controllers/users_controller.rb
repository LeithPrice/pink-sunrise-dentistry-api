class UsersController < ApplicationController

    # these are methods that are run subject to specific fetch statements
    before_action :authorize_request, except: :create
    before_action :find_user, except: [:create, :index]
 
    # this method sets the @user variable with all User data and renders it
    def index
        @users = User.all
        render json: @users, status: :ok
    end

    # this method only shows the @user variable
    def show
        render json: @user, status: :ok
    end

    # this method creates a user with the user_params attached and associates it with @user variable
    def create
        @user = User.create(user_params)
        if @user.save
            token = JsonWebToken.encode(user_id: @user.id)
            render json: {username: @user.username, token: token}, status: :created
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    # this method updates the current user in variable @user with user_params
    def update
        unless @user.update(user_params)
            render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    # this method witll destroy the curretn user in variable @user
    def destroy
        @user.destroy
    end

    # private is an access modifier, used so the below methods can only be called within this class.
    private
    
    # this method will search User table in DB for users matching params[:username] and assign to variable @user
    def find_user
        @user = User.find_by_username!(params[:username])
    rescue ActiveRecord::RecordNotFound
        render json: { errors: 'User not found'}, status: :not_found
    end

    # this method authorizes what parameters to be taken into consideration when used.
    def user_params
        params.permit(
            :name, :username, :email, :password, :password_confirmation
        )
    end
end
