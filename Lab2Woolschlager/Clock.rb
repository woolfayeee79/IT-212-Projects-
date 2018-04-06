class Clock
  attr_reader :hr, :min, :sec
  
  def initialize(the_hr, the_min, the_sec)
    @hr = the_hr
    @min = the_min
    @sec = the_sec
  end
  
  def to_s
    return "%02d:%02d:%02d" % [@hr, @min, @sec]
  end
  
  def tick
    @sec += 1
    if @sec == 60
      @min += 1
      @sec = 0  
   end
    if @min == 60
      @hr += 1
      @min = 0
   end  
    if @hr == 24
       @hr = 0
   end  
 end
end
  
