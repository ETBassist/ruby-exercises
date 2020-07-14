class Werewolf
  attr_reader :name, :location, :human, :hungry, :stomach

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hungry = false
    @stomach = []
  end

  def human?
    @human
  end

  def wolf?
    @human == false
  end

  def change!
    if @human == true
      @human = false
      @hungry = true
    else
      @human = true
    end
  end

  def consume(victim)
    if @human == false
      victim.status = :dead
      @stomach << victim
      @hungry = false
    end
  end
end
