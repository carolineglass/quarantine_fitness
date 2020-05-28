class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

    def create 
        user = User.find_by(name: session_params[:name])

        if user && user.authenticate(session_params[:password])
            session[:user_id] = user.id
            redirect_to user
        else
            flash[:errors] = "Try Again"
            redirect_to new_login_path
        end
    end

    def destroy 
        session[:user_id] = nil
        redirect_to new_login_path
    end

    private 

    def session_params
        params.require(:session).permit(:name, :password)
    end
end