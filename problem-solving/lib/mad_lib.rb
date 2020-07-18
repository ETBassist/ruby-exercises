class Madlib
  attr_accessor :noun, :verb, :adjective, :adverb

  def noun(word)
    @noun = word
  end

  def verb(word)
    @verb = word
  end

  def adjective(word)
    @adjective = word
  end

  def adverb(word)
    @adverb = word
  end

  def result
    "Do you #{@verb} your #{@adjective} #{@noun} #{@adverb}? That's hilarious!"
  end

end
