class PhotoShout < ActiveRecord::Base

	# has_attached_file :image, styles: {
	# 	shout: "200x200>"
	# }

	# validates_attachment_content_type :attachment, :content_type => %w(image/jpeg image/jpg)


	has_attached_file :image , :styles => { :medium => "3000x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
      validates_attachment_content_type :image  , :content_type => /\Aimage\/.*\Z/


end