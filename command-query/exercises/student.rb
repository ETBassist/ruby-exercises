class Student
  attr_accessor :score, :grade_range

  def initialize
    @grade_range = ["A", "B", "C", "D", "F"]
    @score = 2
  end

  def grade
    @grade_range[@score]
  end

  def study
    if @score > 0
      @score -= 1
    end
  end

  def slack_off
    if @score < 4
      @score += 1
    end
  end

end
