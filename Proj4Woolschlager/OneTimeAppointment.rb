# OneTimeAppointment class
# IT 212
# ref the previous appointment file for reaquire statement
require "./Appointment"
class OneTimeAppointment < Appointment
  
  attr_reader :mon, :year, :day

#set the initialize accourding to UML diagram 
  def initialize(the_location, the_purpose, the_hour, the_min, the_mon, the_year, the_day)
    
    @location = the_location
    @purpose = the_purpose
    @hour = the_hour
    @min = the_min
    @mon = the_mon
    @year = the_year
    @day = the_day
    
  end
  
# Definition of OneTimeAppointment#occurs_on?
  def occurs_on?(the_year, the_mon, the_day)
    print(the_year, the_mon, the_day)
    return @year == the_year &&
            @mon == the_mon &&
            @day == the_day
  end
  
  def to_s
    return "#{location} #{purpose} #{hour} #{min} #{day} #{mon} #{year}"
  end
end      