# Script to correct errors for Lab 1.
#  Convert from meters to feet and inches.
#  The program should repeatedly input a length in meters
#  and then print that length in feet and inches.

print 'Do you wish to input another length in meters? '
more = gets.chomp.upcase( )

while more[0] == 'Y'

  print 'Enter length in meters: '
  meter = gets.chomp.to_f
  f = meter * 3.28084
  feet = f.to_i
  inches = (12.0 * (f - feet)).to_i

  print 'The length is '
  if feet == 1
    print feet.to_s + 'foot '
  else
    print feet.to_s + 'feet '
   
  end   
    
  if inches == 1
    print inches.to_s + " inches.\n"
  elsif inches > 1
    print inches.to_s + " inches.\n"
  else
    print ".\n"

  end

  print 'Do you wish to input another length in meters: '
  more = gets.chomp.upcase( )
  

end
