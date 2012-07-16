require_relative "./rover"
require_relative "./communicator"
require_relative "./navigator"

plateau = ARGF.gets

while !ARGF.eof
  rover_position = ARGF.gets
  position = rover_position.split()[0, 2]
  direction = Directions.from_s(rover_position.split()[2])
  
  navigator = Navigator.new(direction, position)
  rover = Rover.new(navigator)
  communicator = Communicator.new(rover)
  
  communicator.receive ARGF.gets
  
  puts rover
end
puts "=========="