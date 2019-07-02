require('minitest/autorun')
require('minitest/rg')
require_relative('../busstop.rb')
require_relative('../person.rb')

class TestBus< MiniTest::Test

  def setup()

@bus = Bus.new(22, "Ocean Terminal",[])
@new_passenger = Person.new("Kevin", 21)


  end

def test_drive
  assert_equal("Brum brum", @bus.drive())
end

def test_passengers_count
  assert_equal(0, @bus.count_passengers)

end

def test_add_passenger
  # @bus.add_passenger(@new_passenger)
  @bus.add_passenger(@new_passenger)
  assert_equal(1, @bus.count_passengers)
end

# Add a method that drops off a passenger and removes them from the array. This could look like bus.drop_off(passenger2)

def test_remove_passenger
  @bus.remove_passenger(@new_passenger)
  assert_equal(0,@bus.count_passengers)
end


def test_remove_all_passengers
  @bus.remove_all_passengers(@passengers)
  assert_equal(0,@bus.count_passengers)
end


end
