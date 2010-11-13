# extremely simple RSpec test example

# needs gem rspec 
# to run:   spec rspec_example.rb

require 'rubygems'
require 'spec'

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

describe Number do 
  before(:each) do
    @num = Number.new(10)
  end

  describe "integer arithmetic" do 
    it "should add" do
      @num.add(1).should == 11
    end
    it "should subtract" do
      @num.subtract(1).should == 9
    end
  end
end