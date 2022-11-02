# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Doctor.count == 0
    Doctor.create(name: "Dr Singh", user_id: 2)
    Doctor.create(name: "Dr Price", user_id: 3)
end


if User.count == 0
    User.create(username: "admin", name: "Admin", email: "admin@psdentistry.com", admin: true, doctor: false, password: "password", password_confirmation: "password")
    User.create(username: "hardeep", name: "Dr Singh", email: "hardeep@psdentistry.com", admin: false, doctor: true, password: "password", password_confirmation: "password")
    User.create(username: "leith", name: "Dr Price", email: "leith@psdentistry.com", admin: false, doctor: true, password: "password", password_confirmation: "password")
    User.create(username: "janet", name: "Janet", email: "janet@test.com", admin: false, doctor: false, password: "password", password_confirmation: "password")
    User.create(username: "robert", name: "Robert", email: "robert@test.com", admin: false, doctor: false, password: "password", password_confirmation: "password")
end

if Booking.all.length == 0
    Booking.create(user_id: 4,start_date: "2022-10-26 08:00",end_date: "2022-10-26 09:00", doctor_id: 1)
    Booking.create(user_id: 4,start_date: "2022-10-26 09:00",end_date: "2022-10-26 10:00", doctor_id: 1)
    Booking.create(user_id: 4,start_date: "2022-10-27 10:00",end_date: "2022-10-27 11:00", doctor_id: 1)
    Booking.create(user_id: 4,start_date: "2022-10-27 12:00",end_date: "2022-10-27 13:00", doctor_id: 1)
    Booking.create(user_id: 5,start_date: "2022-10-26 08:00",end_date: "2022-10-26 09:00", doctor_id: 2)
    Booking.create(user_id: 5,start_date: "2022-10-27 13:00",end_date: "2022-10-27 14:00", doctor_id: 2)
    Booking.create(user_id: 5,start_date: "2022-10-27 08:00",end_date: "2022-10-27 09:00", doctor_id: 2)
end