# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Profile.destroy_all()
User.destroy_all()

user_one = User.create({ 
  email: "Alex@gmail.com", 
  password: "password", 
  password_confirmation: "password"
  })

user_two = User.create( { email: "John@gmail.com", 
  password: "password", 
  password_confirmation: "password"
  } )

user_one.profiles.create( { name: "Alex" })
user_two.profiles.create( { name: "John" })