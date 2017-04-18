class Post < ApplicationRecord
	validates :title, presence: true,
	                    length: { minimum: 7 }
end
