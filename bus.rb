class Bus


  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum brum"
  end


def count_passengers()
  return @passengers.length
end

def add_passenger(passenger)
  @passengers.push(passenger)
end

def remove_passenger(passenger)
  @passengers.delete(passenger)
end

def remove_all_passengers(passenger)
  @passengers.delete(passenger)
end

end
