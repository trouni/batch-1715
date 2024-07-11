require_relative "restaurant"

class FastFoodRestaurant < Restaurant
  attr_reader :prep_time

  def initialize(name, category, seats, prep_time)
    super(name, category, seats)

    @prep_time = prep_time
  end

  def make_reservation(customer_name)
    puts "Sorry, we don't take reservations here. You okay?"
  end
end
