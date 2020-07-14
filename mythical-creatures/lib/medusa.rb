class Medusa

  attr_accessor :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def empty?
    length == 0
  end

  def count
    length
  end

  def stare(target)
    @statues << target
    target.stone = true
    if @statues.length > 3
      @statues.first.stone = false
      @statues.shift
    end
  end
end


class Person

  attr_accessor :name, :stone

  def initialize(name, stone = false)
    @name = name
    @stone = stone
  end

  def stoned?
    @stone == true
  end
end
