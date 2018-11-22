# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all

puts "creating users"
User.create(name: "Marissa", mood: "cheerful", email: "marissa@gmail.com", password_digest: "test", profile_img: "test" )
puts "done creating users"

puts "creating posts"
Post.create(title: "First Post", body: "Hello there", user: User.all.sample)
puts "done creating posts"
