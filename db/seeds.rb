# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name: 'Bobo', last_name: 'Jazz', username: 'BJ', email: "bj@email.com", apartment: "PHB", password_digest: "password", admin: "No")
user2 = User.create(first_name: 'Waldo', last_name: 'Where', username: 'WW', email: "ww@email.com", apartment: "5D", password_digest: "password", admin: "No")
