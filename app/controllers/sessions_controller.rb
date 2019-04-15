class SessionsController < ApplicationController
    def new
    end

    def create
        if session[:name] != nil
            redirect_to "/"
        elsif params[:name] != "" && params[:name] != nil
            session[:name] = params.permit(:name)[:name]
            redirect_to "/"
        else
            redirect_to "/login"
        end
    end

    def destroy
        session[:name] = nil
    end
end