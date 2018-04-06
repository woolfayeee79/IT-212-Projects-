# Megan Woolschlager
# IT212 
# requre .card class
# Taken from the person class spaceship repace .age with .rank
require "./Card"

class Card
  
  def <=>(other)
    if self.rank > other.rank
      return 1
    elsif self.rank < other.rank
      return -1
    else
      return 0
    end
  end
end