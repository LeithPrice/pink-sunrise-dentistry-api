# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if Booking.all.length == 0
    Booking.create(appointment_time: "2022-10-26 08:00", doctor_id: "Smith")
    Booking.create(appointment_time: "2022-10-26 09:00", doctor_id: "Smith")
    Booking.create(appointment_time: "2022-10-27 10:00", doctor_id: "Smith")
    Booking.create(appointment_time: "2022-10-27 12:00", doctor_id: "Smith")
    Booking.create(appointment_time: "2022-10-26 08:00", doctor_id: "Bloggs")
    Booking.create(appointment_time: "2022-10-27 01:00", doctor_id: "Bloggs")
    Booking.create(appointment_time: "2022-10-27 08:00", doctor_id: "Bloggs")
end