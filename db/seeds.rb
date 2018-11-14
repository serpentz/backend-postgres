# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'
require 'pry'
User.create(name: "sample user")

Category.create(name: "girlfriend")
Category.create(name: "minds")

CategoryPost.create(post_id: 1, category_id: 1)
CategoryPost.create(post_id: 2, category_id: 2)

SelectedMeme.create( user_id: 1, post_id: 1)
SelectedMeme.create( user_id: 1, post_id: 2)

data = JSON.parse(RestClient.get("https://www.reddit.com/top/.json?count=90").body)


data['data']['children'].each do |x|

	 Post.find_or_create_by( text: x['data']['title'], url: x['data']['url'] )
	end
  

