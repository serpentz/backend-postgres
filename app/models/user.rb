class User < ApplicationRecord
	has_many :posts
	has_many :selected_memes
    has_many :posts, through: :selected_memes
end
