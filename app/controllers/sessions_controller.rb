class SessionsController < ApplicationController
  	def new	
  	end

  	def show
  	end

  	def create
  		user = User.find_by(email: params[:email])
  		if user && user.authenticate(params[:password])
  			session[:user_id] = user.id
  			redirect_to root_path, notice: "Login succesful"
  		else
  			flash.now.alert = "email or pàssword incorrect"
  			render :new
  		end
  	end

  	def destroy
  		session.delete(:user_id)
  		redirect_to root_path, notice: "Session closed !"
  	end
end
