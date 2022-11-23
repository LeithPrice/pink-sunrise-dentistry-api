class BookingsMailer < ApplicationMailer

  # this method determines the params  and then actions the email being sent
  def booking_confirmation(booking, current_user)
    @booking = booking
    @customer = current_user
    @doctorid = booking.doctor_id
    @time = booking.label
    @date = booking.date
    @doctor = Doctor.find(@doctorid)


    mail to: @customer.email, subject: "Booking confirmation
    for Pink Sunrise Dentistry"

  end
end
