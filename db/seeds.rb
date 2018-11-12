# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "sample user")

Post.create(text: "Meme 1", url: "test1")
Post.create(text: "Meme 2", url: "test2")


Category.create(name: "girlfriend")
Category.create(name: "minds")


CategoryPost.create(post_id: 1, category_id: 1)
CategoryPost.create(post_id: 2, category_id: 2)


SelectedMeme.create( user_id: 1, post_id: 1)
SelectedMeme.create( user_id: 1, post_id: 2)