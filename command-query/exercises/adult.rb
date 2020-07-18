class Adult
  attr_accessor :drunk, :drinks

  def initialize
    @drunk = false
    @drinks = 0
  end

  def sober?
    @drunk == false
  end

  def consume_an_alcoholic_beverage
    @drinks += 1
    if @drinks > 2
      @drunk = true
    end
  end

end
