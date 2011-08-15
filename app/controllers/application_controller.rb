class ApplicationController < ActionController::Base

  	include Clearance::Authentication

   	def authenticate(params)
     	User.authenticate(params[:session][:username],
                       	  params[:session][:password])
   	end

	protect_from_forgery
end
