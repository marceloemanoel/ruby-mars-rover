require_relative "./rover"

plateau = ARGF.gets

while !ARGF.eof

  rover_position = ARGF.gets

  position  = rover_position.split[0, 2]
  direction = rover_position.split[2]
  commands  = ARGF.gets

  rover     = Rover.new(direction, position)
  rover.operate(commands)

  puts rover

end
puts '-------'
