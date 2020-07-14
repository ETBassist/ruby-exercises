class Jackalope
  attr_accessor :name, :etymology

  def initialize(name)
    @name = name
    @etymology = ["Jackrabbit", "Antelope"]
  end

  def name
    @name
  end

  def etymology
    @etymology
  end

end
