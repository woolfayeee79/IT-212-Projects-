#Class Appointment
#creat a class with instance variables @location, @purose, @hour, and @min
#IT212
#Megan Woolschlager

class Appointment 
  attr_reader :location, :purpose, :hour, :min
#set the initialize accourding to UML diagram 
  def initialize(the_location, the_purpose, the_hour, the_min)
    @location = the_location
    @purpose = the_purpose
    @hour = the_hour
    @min = the_min
  
  end
  
#return the values in a string  
  def to_s
    return "#{location} #{purpose} #{hour} #{min}"
  end
end  