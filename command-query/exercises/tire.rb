class Tire
  attr_accessor :flat

  def initialize
    @flat = false
  end

  def flat?
    @flat
  end

  def blow_out
    @flat = true
  end
  
end
