class Post < ApplicationRecord
	has_many :selected_memes
    has_many :users, through: :selected_memes
    has_many :category_posts
    has_many :categories, through: :category_posts
end
