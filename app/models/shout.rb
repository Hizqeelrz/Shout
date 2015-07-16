class Shout < ActiveRecord::Base

  belongs_to :user
  default_scope { order("created_at DESC") }
  belongs_to :content, polymorphic: true


  def self.search term
  	text_shouts = TextShout.where("body LIKE ?", "%#{term}%")
  	where(content_type: "TextShout", content_id: text_shouts )
  end

end
