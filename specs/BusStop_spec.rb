require("minitest/autorun")
require("minitest/pride")
require_relative("../BusStop.rb")
require_relative("../Person.rb")

class BusStopTest < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Haymarket")
    @person1 = Person.new("Dave", 31)
    # @person2 = Person.new("Steve", 29)
  end

  def test_queue_size()
    assert_equal(0, @bus_stop.queue_size())
  end

  def test_add_person_to_queue()
    @bus_stop.add_person_to_queue(@person1)
    assert_equal(1, @bus_stop.queue_size())
  end

  def test_empty_bus_stop()
    assert_equal(0, @bus_stop.queue_size())
  end

end
