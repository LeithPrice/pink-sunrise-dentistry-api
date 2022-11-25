# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# below are all the preloaded data for the database that is seeded in if you ever do a rails db:seed

if User.count == 0
    User.create(username: "admin", name: "Admin", email: "admin@psdentistry.com", password: "password", password_confirmation: "password")
    User.create(username: "Hardeep", name: "Hardeep Singh", email: "hardeep@psdentistry.com", password: "password", password_confirmation: "password")
    User.create(username: "Leith", name: "Leith Price", email: "leith@psdentistry.com", password: "password", password_confirmation: "password")
    User.create(username: "Janet", name: "Janet Doe", email: "janet@test.com", password: "password", password_confirmation: "password")
    User.create(username: "Robert", name: "Robert Bloggs", email: "robert@test.com", password: "password", password_confirmation: "password")
end

if Atend.count == 0
    x = 1
    while x > 60
      Atend.create(date: Time.now() + x.day)
      x = x + 1
    end
end
#   Atend.create(date: Time.now() + 2.day)
#   Atend.create(date: Time.now() + 3.day)
#   Atend.create(date: Time.now() + 4.day)
#   Atend.create(date: Time.now() + 5.day)
#   Atend.create(date: Time.now() + 6.day)
#   Atend.create(date: Time.now() + 7.day)
#   Atend.create(date: Time.now() + 8.day)


if Doctor.count == 0
    Doctor.create(docname: "Dr Pencil", name: "George Pencil")
    Doctor.create(docname: "Dr Rubber", name: "Jenny Rubber")
end

if Booking.count == 0
    Booking.create(doctor_id: 1, atend_id: 1, user_id: 2, label: "8:00 AM", hour: 8, minutes: 00, booked: true )
    Booking.create(doctor_id: 1, atend_id: 2, user_id: 3, label: "8:30 AM", hour: 8, minutes: 30, booked: true )
    Booking.create(doctor_id: 1, atend_id: 3, user_id: 4, label: "9:00 AM", hour: 9, minutes: 00, booked: true )
    Booking.create(doctor_id: 1, atend_id: 1, user_id: 5, label: "9:30 AM", hour: 9, minutes: 30, booked: true )
    Booking.create(doctor_id: 1, atend_id: 2, user_id: 2, label: "10:00 AM", hour: 10, minutes: 00, booked: true )
    Booking.create(doctor_id: 1, atend_id: 3, user_id: 3, label: "10:30 AM", hour: 10, minutes: 30, booked: true )
    Booking.create(doctor_id: 2, atend_id: 1, user_id: 4, label: "11:00 AM", hour: 11, minutes: 00, booked: true )
    Booking.create(doctor_id: 2, atend_id: 2, user_id: 5, label: "11:30 AM", hour: 11, minutes: 30, booked: true )
    Booking.create(doctor_id: 2, atend_id: 3, user_id: 2, label: "12:00 AM", hour: 12, minutes: 00, booked: true )
    Booking.create(doctor_id: 2, atend_id: 1, user_id: 3, label: "2:00 PM", hour: 14, minutes: 00, booked: true )
    Booking.create(doctor_id: 2, atend_id: 2, user_id: 4, label: "2:30 PM", hour: 14, minutes: 30, booked: true )
    Booking.create(doctor_id: 2, atend_id: 3, user_id: 5, label: "3:00 PM", hour: 15, minutes: 00, booked: true )
    Booking.create(doctor_id: 2, atend_id: 1, user_id: 2, label: "3:30 PM", hour: 15, minutes: 30, booked: true )
    Booking.create(doctor_id: 2, atend_id: 2, user_id: 3, label: "4:00 PM", hour: 16, minutes: 00, booked: true )
    Booking.create(doctor_id: 2, atend_id: 3, user_id: 4, label: "4:30 PM", hour: 16, minutes: 30, booked: true )
end
