require_relative "./rover"
require_relative "./operator"

plateau = ARGF.gets

while !ARGF.eof
  rover_position = ARGF.gets
  position = rover_position.split[0, 2]
  direction = Directions.from_s(rover_position.split[2])

  rover = Rover.new(direction, position)
  Operator.new(rover).receive ARGF.gets

  puts rover
end
puts "=========="
