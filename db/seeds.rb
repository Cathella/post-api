# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'user@mail.com', password: 'password', password_confirmation: 'password')

post = Post.create(title: "First Post", body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur qui placeat reprehenderit. Maxime blanditiis doloribus odit ea optio ad temporibus esse quia veniam consequuntur harum, corrupti suscipit fugiat, asperiores ipsa?")
post.comments.create(body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur qui placeat reprehenderit. Maxime blanditiis doloribus odit ea optio ad temporibus esse quia veniam consequuntur harum, corrupti suscipit fugiat, asperiores ipsa?")

post_2 = Post.create(title: "Second Post", body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur qui placeat reprehenderit. Maxime blanditiis doloribus odit ea optio ad temporibus esse quia veniam consequuntur harum, corrupti suscipit fugiat, asperiores ipsa?")
post_2.comments.create(body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur qui placeat reprehenderit. Maxime blanditiis doloribus odit ea optio ad temporibus esse quia veniam consequuntur harum, corrupti suscipit fugiat, asperiores ipsa?")

post_3 = Post.create(title: "Third Post", body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur qui placeat reprehenderit. Maxime blanditiis doloribus odit ea optio ad temporibus esse quia veniam consequuntur harum, corrupti suscipit fugiat, asperiores ipsa?")
post_3.comments.create(body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur qui placeat reprehenderit. Maxime blanditiis doloribus odit ea optio ad temporibus esse quia veniam consequuntur harum, corrupti suscipit fugiat, asperiores ipsa?")

post_4 = Post.create(title: "Fourth Post", body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur qui placeat reprehenderit. Maxime blanditiis doloribus odit ea optio ad temporibus esse quia veniam consequuntur harum, corrupti suscipit fugiat, asperiores ipsa?")
post_4.comments.create(body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur qui placeat reprehenderit. Maxime blanditiis doloribus odit ea optio ad temporibus esse quia veniam consequuntur harum, corrupti suscipit fugiat, asperiores ipsa?")

post_5 = Post.create(title: "Fifth", body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur qui placeat reprehenderit. Maxime blanditiis doloribus odit ea optio ad temporibus esse quia veniam consequuntur harum, corrupti suscipit fugiat, asperiores ipsa?")
post_5.comments.create(body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur qui placeat reprehenderit. Maxime blanditiis doloribus odit ea optio ad temporibus esse quia veniam consequuntur harum, corrupti suscipit fugiat, asperiores ipsa?")
