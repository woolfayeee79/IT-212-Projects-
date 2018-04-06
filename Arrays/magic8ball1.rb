# Magic8Ball Example
# Source code file: magic8ball.rb.txt
# Show a random response from a Magic Eight Ball fortune telling device. 
ans = ["Yes -- definitely", "Most likely", "Replay hazy, try again", 
      "Cannot predict"]
ans_num = rand(6)
if ans_num == 0
  ans = "Yes -- definitely"
elsif ans_num == 1
  ans = "Most likely"
elsif ans_num == 2
  ans = "Reply hazy, try again"
elsif ans_num == 3
  ans = "Cannot predict now"
elsif ans_num == 4
  ans = "Don't count on it"
else
  ans = "Very doubtful"
end
   
print "Magic eight ball answer: ", ans, ".\n"
