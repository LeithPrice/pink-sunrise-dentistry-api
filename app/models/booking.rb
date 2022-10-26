class Booking < ApplicationRecord
    belongs_to :user

    def transform_booking
        return {
          name: self.user.name,
          username: self.user.username,
          email: self.user.email,
          usertype: self.user.user_type,
          appointmenttime: self.booking.appointment_time,
          doctor: self.booking.doctor_id,
          posted: self.created_at,
          edited: self.updated_at
        }
      end
end
