class Centaur
  attr_accessor :name, :breed, :cranky, :standing, :cranky_counter, :rested

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @cranky_counter = 0
    @rested = true
  end

  def shoot
    @cranky_counter += 1
    if @cranky_counter >= 3
      @cranky = true
      @rested = false
      "NO!"
    elsif @standing == false
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @cranky_counter += 1
    if @cranky_counter >= 3
      @cranky = true
      @rested = false
      "NO!"
    elsif @standing == false
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def sleep
    if @standing == true
      "NO!"
    else
      @cranky = false
      @cranky_counter = 0
    end
  end

  def drink
    if @standing == true && @rested == false
      @rested = true
      @cranky = false
    elsif @rested == true
      "NOW I'M SICK"
    else
      "NO!"
    end
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def laying?
    @standing == false
  end
end
