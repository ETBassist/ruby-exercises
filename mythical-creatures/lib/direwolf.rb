class Direwolf
  attr_accessor :name, :home, :size, :starks_to_protect, :can_hunt_walkers

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @can_hunt_walkers = true
  end

  def protects(target)
    if self.home == target.location && self.starks_to_protect.length < 2
      @starks_to_protect << target
      target.safe = true
      @can_hunt_walkers = false
    end
  end

  def hunts_white_walkers?
    @can_hunt_walkers
  end

  def leaves(target)
    if self.starks_to_protect.include?(target) == true
      self.starks_to_protect.delete(target)
      target.safe = false
    else
      target
    end
  end

end

class Stark
  attr_accessor :name, :location, :safe

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @safe = false
  end

  def safe?
    @safe
  end

  def house_words
    if @safe == false
      "Winter is Coming"
    else
      "The North Remembers"
    end
  end

end
