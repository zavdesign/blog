class Post < ApplicationRecord
	validates :title, presence: true,
	          length: { minimum: 7 }

	has_many :comments, :dependent => :destroy
end
