class Ogre
  attr_accessor :name, :home, :encounter_counter, :swings

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @encounter_counter = 0
    @swings = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    if human.encounter_counter < 3
      human.ogre_aware = false
    else
      human.ogre_aware = true
      self.swing_at(human)
      if self.swings >= 2
        human.conscious = false
      end
      human.encounter_counter = 0
    end
    self.encounter_counter += 1
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.conscious = true
  end
  
end


class Human
  attr_accessor :name, :encounter_counter, :ogre_aware, :conscious

  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
    @ogre_aware = false
    @conscious = true
  end

  def notices_ogre?
    @ogre_aware
  end

  def knocked_out?
    @conscious == false
  end
end
