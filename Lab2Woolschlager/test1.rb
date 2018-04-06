require "./Clock"

c1 = Clock.new(13, 8, 7)
print c1, "\n"
print "#{c1.hr} #{c1.min} #{c1.sec}\n"
# Expected output: 13:08:07
# Output: 13 8 7

#Test case where seconds roll over
c2= Clock.new(13, 8, 59)
c2.tick
print c2, "\n"

#Output: 12:09:00

#Test case where seconds and minutes roll over

c3= Clock.new(13, 59, 59)
c3.tick
print c3, "\n"

#

#Test case where everything rolls over 

c4= Clock.new(23, 59, 59)
c4.tick
print c4, "\n"