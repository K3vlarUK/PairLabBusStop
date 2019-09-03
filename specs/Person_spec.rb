require("minitest/autorun")
require("minitest/pride")
require_relative("../Person.rb")

def PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Dave", 31)
  end

end
