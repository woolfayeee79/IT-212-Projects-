# LongSong Example
# Source code file longsong.rb
# Display all verses of the song "99 Bottles of Beer on the Wall".



def play_long_song(times_to_repeat)
  verse_number = times_to_repeat
  while verse_number > 0
    print verse_number, " bottles of beer on the wall,\n"
    print verse_number, " bottles of beer.\n"
    print "Take one down and pass it around,\n"
    verse_number = verse_number - 1
    print verse_number, " bottles of beer on the wall.\n\n"
  end
end

#get the output 
print "enter times to repeat: "
n = gets.chomp.to_i
play_long_song(n)
