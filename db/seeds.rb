# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Sally', last_name: 'Z', username: 'SAZ', email: "z@email.com", apartment: "PHB", password_digest: "password", admin: "Yes")
User.create(first_name: 'Randy', last_name: 'Z', username: 'RHZ', email: "r@email.com", apartment: "PHB", password_digest: "password", admin: "No")
#
#
room1 = Room.create(room_name: "Gym")
room2 = Room.create(room_name: "Club Room")
#
Reservation.create(user_id: 1, room_id: 1, hour: '12:00 pm', date: '2020-9-3', confirmID: 123456)
Reservation.create(user_id: 1, room_id: 1, hour: '2:00 pm', date: '2020-9-3', confirmID: 123333)
Reservation.create(user_id: 2, room_id: 1, hour: '2:00 pm', date: '2020-9-3', confirmID: 123333)
Reservation.create(user_id: 2, room_id: 2, hour: '8:00 pm', date: '2020-9-4', confirmID: 123455)
Reservation.create(user_id: 2, room_id: 2, hour: '10:00 pm', date: '2020-9-7', confirmID: 122321)
