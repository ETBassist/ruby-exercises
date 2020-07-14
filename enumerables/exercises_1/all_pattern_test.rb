gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AllPatternTest < Minitest::Test

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    assert all_zeros
  end

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?# Your code goes here
    end
    refute all_zeros
  end

  def test_all_gone
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = true
    words.each do |word|
      if word != "gone"
        all_gone = false
      end
    end# Your code goes here
    assert all_gone
  end

  def test_not_all_gone
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    all_gone = true
    words.each do |word|
      if word != "gone"
        all_gone = false
      end
    end# Your code goes here
    refute all_gone
  end

  def test_all_empty
    strings = ["", "", "", "", "", "", ""]
    all_empty = false
    strings.each do |string|
      all_empty = true unless string != ""
    end# Your code goes here
    assert all_empty
  end

  def test_not_all_empty
    strings = ["", "", "", "full", "", "", ""]
    all_empty = false
    strings.each do |string|
      if string.empty? == true
        all_empty == true
      end
    end# Your code goes here
    refute all_empty
  end

  def test_not_all_uppercase
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    all_caps = false
    words.each do |word|
      if word.upcase != word
        all_caps = false
      end
    end# Your code goes here
    refute all_caps
  end

  def test_all_lies
    lies = [false, false, false, false]
    all_lies = false
    lies.each do |lie|
      if lie == false
        all_lies = true
      end
    end# Your code goes here
    assert all_lies
  end

  def test_all_multiples_of_7
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    all_multiples_of_7 = false
    numbers.each do |number|
      if number % 7 == 0
        all_multiples_of_7 = true
      end
    end    # Your code goes here
    assert all_multiples_of_7
  end

  def test_not_all_3_digits_long
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    all_3_digits = false
    numbers.each do |number|
      if number.to_s.length > 3
        all_3_digits = false
      end
    end# Your code goes here
    refute all_3_digits
  end

  def test_all_4_letter_words
    words = ["love", "hate", "fire", "bird", "call"]
    all_4_letters = false
    words.each do |word|
      all_4_letters = true unless word.length > 4 || word.length < 4
    end# Your code goes here
    assert all_4_letters
  end

end
