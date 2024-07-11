require_relative "restaurant"
require_relative "fast_food_restaurant"
require_relative "fine_dining_restaurant"

saizeria = Restaurant.new("Saizeria", "italian", 40)
burger_king = FastFoodRestaurant.new("Burger King", "burgers", 25, 2)
nobu = FineDiningRestaurant.new("Nobu", "japanese", 12, 3, "Ryo")

puts "#{saizeria.name} has #{saizeria.seats} seats."
puts "#{burger_king.name} has #{burger_king.seats} seats."
puts "#{nobu.name} has #{nobu.seats} seats."

burger_king.make_reservation("Max")
p burger_king

nobu.make_reservation("Ryo")
p nobu
