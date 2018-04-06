def frame_score(the_frame, bonus1, bonus2)
  if the_frame[0] == 10 #frame is a strike
    return 10 + bonus1 + bonus2
  elsif the_frame[0] + the_frame[1] == 10
    return 10 + bonus1
  
  elsif the_frame[0] + the_frame[1] < 10
    return the_frame[0] + the_frame[1]
  end  
end
