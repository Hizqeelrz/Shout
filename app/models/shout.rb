class Shout < ActiveRecord::Base

  belongs_to :user
  default_scope { order("created_at DESC") }
  belongs_to :content, polymorphic: true

end
