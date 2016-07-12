require_relative "./north"
require_relative "./south"

module Direction
  class East
    def turn_left
      North.new
    end

    def turn_right
      South.new
    end

    def move(current_position)
      x = current_position[0].to_i + 1
      y = current_position[1].to_i

      [x, y]
    end

    def to_s
      "E"
    end
  end
end
