require_relative 'chef'

class Restaurant # UpperCamelCase
  attr_reader :name, :seats, :category

  # Class method
  def self.categories
    %w[japanese italian burgers sushi]
  end

  def initialize(name, category, seats)
    @name = name # string
    @category = category # string
    @seats = seats # integer
    @reservations = []
  end

  # Instance method
  def make_reservation(customer_name)
    @reservations << customer_name

    # `self` refers to the instance that the `#make_reservation` method was called on
    # e.g. burger_king.make_reservation
  end
end
