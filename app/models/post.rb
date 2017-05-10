class Post < ApplicationRecord
	validates :title, presence: true,
	          length: { minimum: 7 }

	has_many :comments, :dependent => :destroy


	has_attached_file :pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://cms.skeeks.com/img/no-image.png" 
	validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/

	# has_many :image, as: :imagable
end
