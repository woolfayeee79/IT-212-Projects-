# OneTimeAppointment class
# IT 212
# ref the previous appointment file for reaquire statement
require "./Appointment"
class MonthlyAppointment < Appointment
  
  attr_reader :day

 def initialize(the_location, the_purpose, the_hour, the_min, the_day)
   
   # super means invoke the current method initialize of the base class do it for the the location the purpose the min , day 
    super(the_location, the_purpose, the_hour, the_min)
   
   @day = the_day
 end

  # Definition of MonthlyAppointment#occurs_on?
  def occurs_on?(the_year, the_mon, the_day)
    return @day == the_day
  end
   
 #return the values in a string inlcude day
  def to_s
    return "#{location} #{purpose} #{hour} #{min} #{day}"
  end
end  

