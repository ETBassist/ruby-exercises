class Narwhal
  attr_accessor :name, :weight, :cute

  def initialize(cute:, weight:, name:)
    @name = name
    @cute = cute
    @weight = weight
  end

  def cute?
    @cute
  end

end
