require_relative "lion"
require_relative "meerkat"
require_relative "warthog"

animals = [
  Lion.new("Simba"),
  Lion.new("Nala"),
  Meerkat.new("Timon"),
  Warthog.new("Pumbaa")
]

# animals is a polymorphic array
animals.each do |animal|
  # animal is an instance of either Lion, Meerkat or Warthog
  puts animal.talk
end
