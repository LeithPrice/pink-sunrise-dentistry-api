class AuthenticationController < ApplicationController

     # these are methods that are run subject to specific fetch statements
    before_action :authorize_request, except: :login

    # this method is used to login and sets the web token with JsonWebToken
    def login
        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password])
            token = JsonWebToken.encode(user_id: @user.id)
            time = Time.now + 24.hours.to_i
            render json: { token: token, exp: time.strftime("%m-%d-%y %H:%M"), username: @user.username }, status: :ok
        else
            render json: {error: 'Unauthorized'}, status: :unauthorized
        end
    end

    # private is an access modifier, used so the below methods can only be called within this class.
    private

    # this method sets the acceptable parmas permitted
    def login_params
        params.permit(:email, :password)
    end
    
end
