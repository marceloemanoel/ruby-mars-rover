class Rover
  
  def initialize(navigator)
    @navigator = navigator 
  end
  
  def turn_left
    @navigator.turn_left
  end
  
  def turn_right
    @navigator.turn_right
  end
  
  def move
    @navigator.move
  end  

  def direction
    @navigator.direction
  end

  def position
    @navigator.position
  end
  
  def receive(command)
  end
end            
