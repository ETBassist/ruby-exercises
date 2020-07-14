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

  def contains?(candy)
    @candies.any? do |kind|
      kind.type == candy
    end
  end

end
