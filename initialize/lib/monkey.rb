class Monkey
  attr_accessor :name, :type, :favorite_food

  def initialize(array = [name, type, favorite_food])
    @name = array[0]
    @type = array[1]
    @favorite_food = array[2]
  end

end
