class Parrot
  attr_accessor :name, :known_words, :sound

  def initialize(name:, known_words:)
    @name = name
    @known_words = known_words
    @sound = "Squawk!"
  end

end
