require_relative 'time'

class Appointments
  attr_accessor :appointment_times

  def initialize
    @appointment_times = []
  end

  def earliest
    @appointment_times = @appointment_times.sort_by do |time|
      [time.month, time.day, time.hour, time.minute]
    end
    @appointment_times[0]
  end

  def at(slot)
    @appointment_times << slot
  end

end
