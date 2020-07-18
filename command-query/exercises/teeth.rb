class Teeth
  attr_accessor :clean

  def initialize
    @clean = false
  end

  def clean?
    @clean
  end

  def brush
    @clean = true
  end

end
