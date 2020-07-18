class RollCall
  attr_accessor :names

  def initialize
    @names = []
  end

  def longest_name
    @names.max_by do |name|
      name.length
    end
  end

  def << (name)
    @names << name
  end

end
