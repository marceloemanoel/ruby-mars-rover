require "spec_helper"

describe Rover do
  describe "#turn_left" do
    context "facing NORTH" do
      it "faces WEST" do
        @rover = Rover.new(Directions::NORTH)
        @rover.turn_left
        @rover.direction.should == Directions::WEST
      end
    end

    context "facing WEST" do
      it "faces SOUTH" do
        @rover = Rover.new(Directions::WEST)
        @rover.turn_left
        @rover.direction.should == Directions::SOUTH
      end
    end

    context "facing SOUTH" do
      it "faces EAST" do
        @rover = Rover.new(Directions::SOUTH)
        @rover.turn_left
        @rover.direction.should == Directions::EAST
      end
    end

    context "facing EAST" do
      it "faces NORTH" do
        @rover = Rover.new(Directions::EAST)
        @rover.turn_left
        @rover.direction.should == Directions::NORTH
      end
    end
  end

  describe "#turn_right" do
    context "facing NORTH" do
      it "faces EAST" do
        @rover = Rover.new(Directions::NORTH)
        @rover.turn_right
        @rover.direction.should == Directions::EAST
      end
    end

    context "facing EAST" do
      it "faces SOUTH" do
        @rover = Rover.new(Directions::EAST)
        @rover.turn_right
        @rover.direction.should == Directions::SOUTH
      end
    end

    context "facing SOUTH" do
      it "faces WEST" do
        @rover = Rover.new(Directions::SOUTH)
        @rover.turn_right
        @rover.direction.should == Directions::WEST
      end
    end

    context "facing WEST" do
      it "faces NORTH" do
        @rover = Rover.new(Directions::WEST)
        @rover.turn_right
        @rover.direction.should == Directions::NORTH
      end
    end
  end

  describe "#move" do
    context "standing at position (0, 0)" do

      context "facing NORTH" do
        it "stands at position (0, 1)" do
          @rover = Rover.new(Directions::NORTH)
          @rover.move
          @rover.position.should == [0, 1]
        end
      end

      context "facing WEST" do
        it "stands at position (-1, 0)" do
          @rover = Rover.new(Directions::WEST)
          @rover.move
          @rover.position.should == [-1, 0]
        end
      end

      context "facing SOUTH" do
        it "stands at position (0, -1)" do
          @rover = Rover.new(Directions::SOUTH)
          @rover.move
          @rover.position.should == [0, -1]
        end
      end

      context "facing EAST" do
        it "stands at position (1, 0)" do
          @rover = Rover.new(Directions::EAST)
          @rover.move
          @rover.position.should == [1, 0]
        end
      end

    end
  end
end
