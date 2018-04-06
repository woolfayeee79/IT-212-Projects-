#psedocode for project 4.

# Include (require) the source code for the MonthlyAppointment and OneTimeAppointment classes
# Use the date gem 
  require 'date'
  require "./MonthlyAppointment"
  require "./OneTimeAppointment"


appointments = [ ]
File.open("appointments.txt", "r") do |f|
  while line = f.gets
    fields = line.chomp.split(",")
    appointment_type = fields[0] 
    if appointment_type == 'ot'
      room_number = fields[1]
      purpose = fields[2] 
      year = fields[3].to_i
      mon = fields[4].to_i
      day = fields[5].to_i
      hour = fields[6].to_i
      min = fields[7].to_i
      # Create new OneTimeAppointment object using data in room_number,
         #purpose, year, mon, day, hour, and min.
      appointments.push(OneTimeAppointment.new(room_number, purpose, year, mon, day, hour, min))
    else 
      room_number = fields[1] 
      purpose = fields[2] 
      day = fields[3].to_i
      hour = fields[4].to_i
      min = fields[5].to_i
      #Create new MonthlyAppointment object using data in room_number,
         #purpose, day, hour, and min.
      appointments.push(MonthlyAppointment.new(room_number, purpose, day, hour, min))

    end
  end
end 

# Create new DateTime object for December 31, 2013 named dt.
dt = DateTime.new(2017, 12, 31)
for i in 1..365
  dt = dt + 1
 year = dt.year
  mon = dt.mon
  day = dt.day
  for appt in appointments
    if appt.occurs_on?(year,mon,day) 
      print(mon.to_s + "/" + day.to_s + "/" + year.to_s + "\n")
      print appt, "\n\n"
    end
  end
end