class PhotoShout < ActiveRecord::Base

	has_attached_file :image, styles: {
		shout: "200x200>"
	}

	# validates_attachment_content_type :attachment, :content_type => %w(image/jpeg image/jpg)

end