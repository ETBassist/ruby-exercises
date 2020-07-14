class Hobbit
  attr_accessor :name, :age, :disposition, :is_adult, :is_old, :has_ring
  attr_reader :short

  def initialize(name, disposition = "homebody", age = 0, has_ring = false)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = false
    @is_old = false
    @short = true
  end

  def celebrate_birthday
    @age += 1
    if @age >= 33
      @is_adult = true
    end
    if age >=100
      @is_old = true
    end
  end

  def adult?
    @is_adult == true
  end

  def old?
    @is_old == true
  end

  def get_ring
    @has_ring = true
  end

  def has_ring?
    @has_ring == true
  end

  def is_short?
    @short == true
  end
end
