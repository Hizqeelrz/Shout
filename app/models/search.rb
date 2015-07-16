class Search
	extend ActiveModel::Naming
	attr_reader :term

	def initialize options = {}
		@term = options.fetch(:term, "")
	end

	def shouts
		Shout.text_shouts.where(content_id: text_shouts)
	end

	def to_partial_path
		"searches/search"
	end

	private

	def text_shouts
		TextShout.where("body LIKE ?", search_term)
	end

	def search_term
		"%#{term}%"
	end
end