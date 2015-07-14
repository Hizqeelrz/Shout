class FollowingRelationshipsController < ApplicationController

	def create
		current_user.follow user
		redirect_to user, notice: "Wow! You are Following a User."
	end

	def destroy
		current_user.unfollow user
		redirect_to user, alert: "Following a User Dispactched."
	end


	private

	def user
		@_user ||= User.find(params[:user_id])
	end

end