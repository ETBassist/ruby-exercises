class Rabbit
  attr_accessor :name, :num_syllables

  def initialize(name:, num_syllables:)
    @name = name
    @num_syllables = num_syllables
    if @num_syllables == 2
      @name = "#{@name} Rabbit"
    end
  end

end
