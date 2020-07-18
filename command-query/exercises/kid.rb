class Kid
  attr_accessor :grams_of_sugar_eaten, :hyperactive

  def initialize
    @grams_of_sugar_eaten = 0
    @hyperactive = false
  end

  def eat_candy
    @grams_of_sugar_eaten += 5
    if @grams_of_sugar_eaten >= 60
      @hyperactive = true
    end
  end

  def hyperactive?
    @hyperactive
  end

end
