require_relative "./west"
require_relative "./east"

module Direction
  class North
    def turn_left
      West.new
    end

    def turn_right
       East.new
    end

    def move(current_position)
      x = current_position[0].to_i
      y = current_position[1].to_i + 1

      [x, y]
    end

    def to_s
      "N"
    end
  end
end
