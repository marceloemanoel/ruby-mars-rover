require_relative "./east"
require_relative "./west"

module Direction
  class South
    def turn_left
      East.new
    end

    def turn_right
      West.new
    end

    def move(current_position)
      x = current_position[0]
      y = current_position[1].to_i - 1

      [x, y]
    end

    def to_s
      "S"
    end
  end
end
