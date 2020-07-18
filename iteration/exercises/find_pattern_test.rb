gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test

  def test_1
    ages = [39, 45, 29, 24, 50]
    younger_than_thirty = nil
    ages.each do |age|
      if age < 30
        younger_than_thirty = age
        break
      end
    end
    assert_equal 29, younger_than_thirty
  end

  def test_2
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    younger_than_thirty = nil
    ages.each do |name, age|
      if age < 30
        younger_than_thirty = name
        break
      end
    end
    assert_equal :ladonna, younger_than_thirty
  end

  def test_3
    ages = [39, 45, 29, 24, 50]
    older_than_fifty = nil
    ages.each do |age|
      if age > 50
        older_than_fifty = age
      end# Your Code Here
    end

    assert_nil older_than_fifty
  end

  def test_4
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    older_than_fifty = nil
    ages.each do |name, age|
      if age > 50
        older_than_fifty.store(name, age)
      end# Your Code Here
    end

    assert_nil older_than_fifty
  end

  def test_5
    ages = [39, 45, 29, 24, 50]
    multiple_of_three = nil
    ages.each do |age|
      if age % 3 == 0 && multiple_of_three == nil
        multiple_of_three = age
      end
    end # Your Code Here

    assert_equal 39, multiple_of_three
  end

  def test_6
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    multiple_of_three = nil
    ages.each do |name, age|
      if multiple_of_three == nil && age % 3 == 0
        multiple_of_three = name
      end
    end# Your Code Here

    assert_equal :abdi, multiple_of_three
  end

  def test_7
    people = ["Willie", "Carmen Sandiego", "Bryan", "Faith", "Zac"]
    # Your Code Here
    carmen = people.find do |name|
      name == "Carmen Sandiego"
    end
    assert_equal "Carmen Sandiego", carmen
  end

  def test_8
    places = {
      Bangkok: "Willie",
      Santa_Fe: "Carmen Sandiego",
      Rome: "Bryan",
      Munich: "Faith",
      Mogudishu: "Zac"
    }
    where_is_carmen_sandiego = nil
    places.each do |place, person|
      if person == "Carmen Sandiego"
        where_is_carmen_sandiego = place
      end
    end# Your Code Here

    assert_equal :Santa_Fe, where_is_carmen_sandiego
  end

  def test_9
    numbers = [3, 7, 13, 11, 10, 2, 17]
    even = nil
    numbers.each do |number|
      if number.even? == true && even == nil
        even = number
      end# Your Code Here
    end

    assert_equal 10, even
  end

  def test_10
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    pending = nil
    purchases.each do |item, status|# Your Code Here
      if status == :pending && pending == nil
        pending = item.to_sym
      end
    end

    assert_equal :books, pending
  end

  def test_11
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    starts_with_b = nil
    purchases.each do |item, status|
      if starts_with_b == nil && item[0] == "b"
        starts_with_b = item# Your Code Here
      end
    end
    assert_equal "backpack", starts_with_b
  end

end
