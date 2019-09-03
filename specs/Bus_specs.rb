require("minitest/autorun")
require("minitest/pride")
require_relative("../Bus.rb")
require_relative("../Person.rb")
require_relative("../BusStop.rb")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @person1 = Person.new("Dave", 31)
    @person2 = Person.new("Steve", 29)
    @bus_stop = BusStop.new("Haymarket")
  end

  def test_bus_drive()
    assert_equal("Brum brum", @bus.bus_drive())
  end

  def test_total_passengers()
    assert_equal(0, @bus.total_passengers())
  end

  def test_add_passenger()
    @bus.add_passenger(@person1)
    assert_equal(1, @bus.total_passengers())
  end

  def test_remove_passenger()
    @bus.add_passenger(@person1)
    @bus.add_passenger(@person2)
    @bus.remove_passenger(@person2)
    assert_equal(1, @bus.total_passengers())
  end

  def test_empty_bus()
    @bus.add_passenger(@person1)
    @bus.add_passenger(@person2)
    @bus.empty_bus()
    assert_equal(0, @bus.total_passengers())
  end

  def test_pick_up_from_stop()
    # Add Passengers to bus stop
    @bus_stop.add_person_to_queue(@person1)
    @bus_stop.add_person_to_queue(@person2)
    # Collecf passengers from the bus stop
    @bus.collect_all_passengers(@bus_stop.queue())
    # remove passengers from the queue
    @bus_stop.empty_bus_stop()
    assert_equal(0, @bus_stop.queue_size())
    # check number of passengers on the bus
    assert_equal(2, @bus.total_passengers())

  end

end
