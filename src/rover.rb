class Rover
  attr_accessor :direction, :position
  
  def initialize(direction, position=[0,0])
    @direction = direction
    @position = position
  end
  
  def turn_left
    @direction = @direction.turn_left
  end
  
  def turn_right
    @direction = @direction.turn_right
  end
  
  def move
    @position = @direction.move(@position)
  end  
end            
