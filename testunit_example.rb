# extremely simple test/unit test example

# to run:   ruby testunit_example.rb

require 'test/unit'

class Number
  def initialize(n)
    @val = n
  end
  def add(b)
    @val + b
  end
  def subtract(b)
    @val - b
  end
end

class TestNumber < Test::Unit::TestCase
  def setup 
    @num = Number.new(10)
  end

  def test_add 
      assert_equal 11, @num.add(1)
  end
  def test_subtract
       assert_equal 9, @num.subtract(1)
  end
end

