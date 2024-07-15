class Patient
  attr_reader :name, :cured
  attr_accessor :room, :id

  def initialize(attributes = {})
    @id = attributes[:id].to_i
    @name = attributes[:name] # string
    @cured = attributes[:cured] || false # boolean
    @room = attributes[:room] # instance of Room
    # @blood_type = nil can now be added without having to change existing code
  end

  def cure!
    @cured = true
  end
end