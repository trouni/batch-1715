class Chef
  attr_reader :name, :restaurant

  def initialize(name, restaurant)
    @name = name
    @restaurant = restaurant # instance of Restaurant
  end
end