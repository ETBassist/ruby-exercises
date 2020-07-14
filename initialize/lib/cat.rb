class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def sound
    "meow"
  end

  def name
    "#{@name}"
  end
end
