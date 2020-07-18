class Children
  attr_accessor :list

  def initialize
    @list = []
  end

  def eldest
    @list.max_by do |child|
      child.age
    end
  end

  def << (child)
    @list << child
  end

end
