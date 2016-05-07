# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@facebooktest.org"
	password = "password"
	User.create!(	email: email,
								password: 							password,
								password_confirmation: 	password)
end

User.create( 	email: "marting12@live.dk",
							password: "hejhej123",
							password_confirmation: "hejhej123")
