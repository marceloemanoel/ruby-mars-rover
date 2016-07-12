require_relative "./direction/east"
require_relative "./direction/north"
require_relative "./direction/south"
require_relative "./direction/west"

class Rover
  attr_reader :direction, :position

  def initialize(initial_direction='N', current_position=[0,0])
     @direction = get_direction_from(initial_direction)
     @position  = current_position
  end

  def operate(commands)
    commands.each_char do |cmd|
      case cmd
        when 'L' then turn_left
        when 'R' then turn_right
        when 'M' then move
      end
    end
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

  def to_s
    "#{position[0]} #{position[1]} #{direction}"
  end

  private

  def get_direction_from(character)
    case character
      when 'N' then Direction::North.new
      when 'E' then Direction::East.new
      when 'W' then Direction::West.new
      when 'S' then Direction::South.new
    end
  end
end
