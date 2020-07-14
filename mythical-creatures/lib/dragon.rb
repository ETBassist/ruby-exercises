class Dragon
  attr_accessor :name, :rider, :color, :stomach

  def initialize(n, c, r)
    @name = n
    @color = c
    @rider = r
    @stomach = 0
  end

  def hungry?
    @stomach < 3
  end

  def eat
    @stomach += 1
  end

end
