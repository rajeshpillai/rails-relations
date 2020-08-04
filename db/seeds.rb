# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Post.delete_all
Category.delete_all
Tagging.delete_all
Tag.delete_all
User.delete_all

Category.create(title: "Programming")
Category.create(title: "Web Development")
Category.create(title: "Ruby on Rails")
Category.create(title: "React")

javascript = Tag.create(name: "javascript")
react = Tag.create(name: "react")
ruby = Tag.create(name: "ruby")
node = Tag.create(name: "node")

admin_user = User.create(
    username:"admin", admin: true)


# Faker::Book.title, content: Faker::GreekPhilosophers.quote)

10.times do |i|
    User.create(
        username: Faker::Name.first_name, admin: false)
    
end

Category.all.each do |category|
    20.times do |i|
        # tag_offset =  rand(Tag.count)
        # tag = Tag.offset(tag_offset).first
        Post.create(title: Faker::Book.title, 
            body: Faker::GreekPhilosophers.quote, category: category,
            tags: i % 2 == 0 ? [javascript, react] : [ruby, node],
            user: admin_user)
    end
end