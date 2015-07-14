class Timeline
	extend ActiveModel::Naming

	def initialize user
		@user = user
	end

	def to_partial_path
		"timelines/timeline"
	end

	def shouts
		@user.shouts
	end

end