class Ghostbuster
  attr_accessor :car

  def initialize(name)
    @name = name
  end

  def say_my_name
    puts "I'm #{@name}"
  end

  def get_car(car = "ECTO-1")
    @car = car
  end

  def ride
    "Our car is the #{@car}!"
  end

end

ghostbuster = Ghostbuster.new("Ray")
ghostbuster.say_my_name
ghostbuster.get_car
puts ghostbuster.ride
