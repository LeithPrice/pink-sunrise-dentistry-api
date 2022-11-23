require 'rails_helper'


RSpec.describe Booking, :type => :model do
    it "is not valid without a label" do
    booking = Booking.new(label: nil)
    expect(booking).to_not be_valid
  end
    it "is not valid without a hour"do
    booking = Booking.new(hour: nil)
    expect(booking).to_not be_valid
  end
    it "is not valid without a minutes"do
    booking = Booking.new(minutes: nil)
    expect(booking).to_not be_valid
  end
    it "is not valid without a booked"do
    booking = Booking.new(booked: nil)
    expect(booking).to_not be_valid
  end
    it "is not valid without a doctor_id"do
    booking = Booking.new(doctor_id: nil)
    expect(booking).to_not be_valid
  end
    it "is not valid without a user_id"do
    booking = Booking.new(user_id: nil)
    expect(booking).to_not be_valid
  end
    it "is not valid without a atend_id"do
    booking = Booking.new(atend_id: nil)
    expect(booking).to_not be_valid
  end
    it "is not valid without a date"do
    booking = Booking.new(date: nil)
    expect(booking).to_not be_valid
  end
end
