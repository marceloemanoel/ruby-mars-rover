require "spec_helper"

describe Rover do
  context "at position (1, 2) facing NORTH receive the command LMLMLMLMM" do
    before :each do
      navigator = Navigator.new(Directions::NORTH, [1, 2])
      @rover = Rover.new(navigator)
      communicator = Communicator.new(@rover)
      communicator.receive("LMLMLMLMM")
    end

    it "stands at location (1, 3)" do
      @rover.position.should == [1, 3]
    end

    it "faces NORTH" do
      @rover.direction.should == Directions::NORTH
    end
  end

  context "at position (3, 3) facing EAST receive the command MMRMMRMRRM" do
    before :each do
      navigator = Navigator.new(Directions::EAST, [3, 3])
      @rover = Rover.new(navigator)
      communicator = Communicator.new(@rover)
      communicator.receive("MMRMMRMRRM")
    end
    it "stands at location (5, 1)" do
      @rover.position.should == [5, 1]
    end

    it "faces EAST" do
      @rover.direction.should == Directions::EAST
    end
  end
end
