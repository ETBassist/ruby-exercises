class Clock
  attr_accessor :time

  def initialize
    @time = 6
  end

  def wait
    if @time == 12
      @time = 0
      @time += 1
    else
      @time += 1
    end
  end

end
