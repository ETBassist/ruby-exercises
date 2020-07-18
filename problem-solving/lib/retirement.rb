class Retirement

  def calculate(a, b)
    if b != b.abs || a != a.abs
      "Error. Age cannot be negative."
    elsif b - a != (b - a).abs
      "Error. Retirement age cannot be negative."
    else
      "You have #{b - a} years left until you can retire. It is 2015, so you can retire in #{2015 + (b -a)}."
    end
  end

end
