class Light
  attr_accessor :on

  def initialize
    @on = false
  end

  def on?
    @on
  end

  def turn_on
    @on = true
  end

end
