require "minitest/autorun"
require "./OneTimeAppointment"
require "./MonthlyAppointment"

class TestClass < Minitest::Test

  def test_appointment
    
    appt = Appointment.new("Room 106", "IT212 Class", 10, 10)
    
    assert_equal "Room 106", appt.location()
    assert_equal 10,appt.hour
    assert_equal "IT212 Class", appt.purpose()
    assert_equal 10,appt.min
    assert_equal "Room 106 IT212 Class 10 10", appt.to_s
  end
 
  #make a test for OneTimeAppointment
  def test_onetimeappointment
  
    appt = OneTimeAppointment.new("Room 202", "ISM210", 1, 30, 26, 2, 2018)
    
    assert_equal "Room 202", appt.location()
    assert_equal 1,appt.hour
    assert_equal "ISM210", appt.purpose()
    assert_equal 30,appt.min
    assert_equal 26,appt.day
    assert_equal 2018,appt.year
    assert_equal "Room 202 ISM210 1 30 26 2 2018", appt.to_s
    assert_equal true, appt.occurs_on?(2018, 2, 26)
    assert_equal false, appt.occurs_on?(2015, 6, 17)
    
  end
    
     #make a test for MonthlyAppointment
  def test_MonthlyAppointment
    
    appt = MonthlyAppointment.new("Room 216", "IT211 Class", 11, 50, 21)
    
    assert_equal "Room 216", appt.location()
    assert_equal 11,appt.hour
    assert_equal "IT211 Class", appt.purpose()
    assert_equal 50,appt.min
    assert_equal 21,appt.day
    assert_equal "Room 216 IT211 Class 11 50 21", appt.to_s
    assert_equal true, appt.occurs_on?(2018, 2, 21)
    assert_equal false, appt.occurs_on?(2016, 4, 9)
      
    
  end
end

    