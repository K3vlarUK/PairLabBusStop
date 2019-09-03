class BusStop
  attr_reader :queue

  def initialize(stop_name)
    @stop_name = stop_name
    @queue = []
  end

  def queue_size()
    return @queue.length()
  end

  def add_person_to_queue(person)
    @queue.push(person)
  end

  def empty_bus_stop()
    @queue = []
  end

end
