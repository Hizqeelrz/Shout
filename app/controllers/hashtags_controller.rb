class HashtagsController < ApplicationController

	def show
		@search = Search.new(hashtag)
	end

	private

	def hashtag
		"##{params[:id]}"
	end
end