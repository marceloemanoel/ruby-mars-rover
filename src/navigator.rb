require_relative "./directions"

class Navigator
  include Directions

  attr_reader :direction, :position

  def initialize(initial_direction, current_position=[0,0])
     @direction = initial_direction
     @position = current_position
  end

  def turn_left
    @direction = @direction.turn_left
  end

  def turn_right
    @direction = @direction.turn_right
  end

  def move()
    @position = @direction.move(@position)
  end
end
