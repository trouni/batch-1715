class FineDiningRestaurant < Restaurant
  attr_reader :stars, :chef

  def initialize(name, category, seats, stars, chef_name)
    # super calls the method with the same name in the parent class
    super(name, category, seats)
    # `super` automatically passes all of the arguments to the parent method
    # `super()` passes none

    @stars = stars # integer

    # `self` refers to the instance itself
    @chef = Chef.new(chef_name, self) # instance of Chef
  end
end
