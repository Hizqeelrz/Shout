class ShoutsController < ApplicationController

	def show
		@shout = Shout.find(params[:id])	
	end

	def destroy
		@shout = Shout.find(params[:id]).destroy
		flash.alert = "Shout deleted"
		redirect_to root_path
	end
	
end