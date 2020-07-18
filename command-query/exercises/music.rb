class Music
  attr_accessor :loud

  def initialize
    @loud = false
  end

  def loud?
    @loud
  end

  def turn_up
    @loud = true
  end

end
