# Part A
# Step 1
# Create a Bus class.
# The Bus should have a route number (e.g. 22) and a destination (e.g. "Ocean Terminal").

class Bus

  def initialize(bus_number, destination)
    @bus_number = bus_number
    @destination = destination
    @passengers = []
  end

# The Bus should have a drive method that returns a string (e.g. "Brum brum").

  def bus_drive()
    return "Brum brum"
  end

  def total_passengers()
    return @passengers.length()
  end

  def add_passenger(person)
    @passengers.push(person)
  end

  def remove_passenger(person)
    @passengers.delete(person)
  end

  def empty_bus()
    @passengers = []
  end

  def collect_all_passengers(bus_stop)
    @passengers.concat(bus_stop)
  end

# Part B
# Give the Bus class a new property, 'passengers'. This should be an array, which starts off empty.
# Add a method to the Bus class which returns how many passengers are on the bus.
# Add a method to the Bus class which takes in a Person and adds it to the array of passengers. The method could look something like bus.pick_up(passenger1)
# Add a method that drops off a passenger and removes them from the array. This could look like bus.drop_off(passenger2)
# Add an 'empty' method to remove all of the passengers - this might be used when the bus reaches its destination, or if the bus breaks down. It should remove all of the passengers from the array.
end
