class Bag
  attr_accessor :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.length == 0
  end

  def count
    @candies.length
  end

  def << (candy)
    @candies << candy
  end

  def contains?(kind)
    @candies.any? do |candy|
      candy.type == kind
    end
  end

  def grab(target)
    @candies.find do |candy|
      candy.type == target
      if candy.type == target
        @candies.delete(candy)
      end
    end
  end

  def take(num)
    @candies.pop(num)
  end

end
