require_relative '../lib/costume'
require_relative '../lib/bag'

class TrickOrTreater
  attr_accessor :dressed_up_as, :bag, :sugar_level

  def initialize(dress_up)
    @dressed_up_as = dress_up.style
    @bag = Bag.new
    @sugar_level = 0
  end

  def has_candy?
    @bag.candies.length > 0
  end

  def candy_count
    @bag.candies.length
  end

  def eat
    @sugar_level += @bag.candies.last.sugar
    @bag.candies.pop
  end

end
