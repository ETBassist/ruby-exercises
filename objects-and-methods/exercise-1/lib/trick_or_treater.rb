require_relative '../lib/bag'

class TrickOrTreater
  attr_accessor :dressed_up_as, :bag

  def initialize(dressed_as)
    @dressed_up_as = dressed_as.style
    @bag = Bag.new
  end

  def has_candy?
    @bag.candies.length > 0
  end

  def candy_count
    @bag.candies.length
  end

  def eat
    @bag.candies.pop
  end

end
