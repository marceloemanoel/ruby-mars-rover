require_relative "./south"
require_relative "./north"

module Direction
  class West
    def turn_left
      South.new
    end

    def turn_right
      North.new
    end

    def move(current_position)
      x = current_position[0].to_i - 1
      y = current_position[1].to_i

      [x, y]
    end

    def to_s
      "W"
    end
  end
end
