class Santa
  attr_accessor :size, :chimney, :fit

  def initialize
    @size = 0
    @chimney = 3
    @fit = true
  end

  def fits?
    @fit
  end

  def eats_cookies
    @size += 1
    if @size >= @chimney
      @fit = false
    end
  end
  
end
