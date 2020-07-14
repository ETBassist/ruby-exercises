class Iguana
  attr_accessor :color

  def initialize
    @color = []
  end

  def colors
    @color.flatten
  end

  def colors= (args)
    @color << args
  end

end
