# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if User.count == 0
    User.create(username: "admin", name: "Admin", email: "admin@psdentistry.com", user_type: "admin", password: "password", password_confirmation: "password")
    User.create(username: "hardeep", name: "Dr Singh", email: "hardeep@psdentistry.com", user_type: "doctor", password: "password", password_confirmation: "password")
    User.create(username: "leith", name: "Dr Price", email: "leith@psdentistry.com", user_type: "doctor", password: "password", password_confirmation: "password")
    User.create(username: "janet", name: "Janet", email: "janet@test.com", user_type: "patient", password: "password", password_confirmation: "password")
    User.create(username: "robert", name: "Robert", email: "robert@test.com", user_type: "patient", password: "password", password_confirmation: "password")
end

if Booking.all.length == 0
    Booking.create(user_id: 2, appointment_time: "2022-10-26 08:00", doctor_id: "hardeep")
    Booking.create(user_id: 3,appointment_time: "2022-10-26 09:00", doctor_id: "hardeep")
    Booking.create(user_id: 3,appointment_time: "2022-10-27 10:00", doctor_id: "hardeep")
    Booking.create(user_id: 2,appointment_time: "2022-10-27 12:00", doctor_id: "hardeep")
    Booking.create(user_id: 2,appointment_time: "2022-10-26 08:00", doctor_id: "leith")
    Booking.create(user_id: 3,appointment_time: "2022-10-27 01:00", doctor_id: "leith")
    Booking.create(user_id: 3,appointment_time: "2022-10-27 08:00", doctor_id: "leith")
end