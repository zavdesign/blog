class Post < ApplicationRecord
	validates :title, presence: true,
	          length: { minimum: 7 }

	has_many :comments, :dependent => :destroy
	has_many :image, as: :imagable

	has_attached_file :images, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://cms.skeeks.com/img/no-image.png"
	validates_attachment_content_type :images, content_type: /\Aimage\/.*\z/

end
