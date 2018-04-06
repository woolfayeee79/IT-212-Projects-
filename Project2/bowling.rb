# Megan Woolschlager IT 212 
# Project number 2 
# submission date: 1/29/2018


require "./read-ragged-array"
require "./frame-score"
#read file name from keyboard 
print "name of input file: " 
input_file = gets.chomp
frames = read_ragged_array(input_file)

score = 0
for i in 1..10
  
   # case of strike with next ball also strike 
   if frames[i][0] == 10 && frames[i+1][0] == 10
      bonus1 = 10 
      bonus2 = frames[i+2][0] 
     
   # case of strike with next ball not a stike   
   elsif frames[i][0] == 10 && frames[i+1][0] < 10
      bonus1 = frames[i+1][0]
      bonus2 = frames[i+1][1] 
     
   # case of spare  
   elsif frames[i][0] + frames[i][1] == 10
      bonus1 = frames[i+1][0] 
      bonus2 = 0
     
  # case of open frame   
   else
      bonus1 = 0
      bonus2 = 0
   end
  
  # add frame score to the running total(+=)  
  score += frame_score(frames[i], bonus1, bonus2)
end 

print score, "\n"