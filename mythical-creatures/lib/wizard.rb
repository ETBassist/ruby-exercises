class Wizard
  attr_accessor :name, :bearded, :spell_counter

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @spell_counter = 0
  end

  def bearded?
    @bearded
  end

  def incantation(text)
    "sudo #{text}"
  end

  def rested?
    @spell_counter < 3
  end

  def cast(spell)
    @spell_counter += 1
    "#{spell}!".upcase
  end

end
