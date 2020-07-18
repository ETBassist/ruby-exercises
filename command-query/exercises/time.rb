require_relative 'appointments'

class Time
  attr_accessor :year, :month, :day, :hour, :minute

  def initialize(y, mo, d, h, mi = 0)
    @year = y
    @month = mo
    @day = d
    @hour = h
    @minute = mi
  end

end
