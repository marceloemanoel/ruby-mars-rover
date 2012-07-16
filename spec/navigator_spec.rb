require "spec_helper"

describe Navigator do
  context "standing at position (0,0) facing NORTH" do
    before :each do
      @navigator = Navigator.new(Directions::NORTH)
    end

    it "turns left and faces WEST" do
      @navigator.turn_left
      @navigator.direction.should == Directions::WEST
    end

    it "turns right and faces EAST" do
      @navigator.turn_right
      @navigator.direction.should == Directions::EAST
    end

    it "moves and stands at position (0, 1)" do
      @navigator.move
      @navigator.position.should == [0, 1]
    end
  end

  context "standing at position (0, 0) facing WEST" do
    before :each do
      @navigator = Navigator.new(Directions::WEST)
    end

    it "turns left and faces SOUTH" do
      @navigator.turn_left
      @navigator.direction.should == Directions::SOUTH
    end

    it "turns right and faces NORTH" do
      @navigator.turn_right
      @navigator.direction.should == Directions::NORTH
    end

    it "moves and stands at position (-1, 0)" do
      @navigator.move
      @navigator.position.should == [-1, 0]
    end

  end

  context "standing at position (0,0) facing SOUTH" do
    before :each  do
      @navigator = Navigator.new(Directions::SOUTH)
    end

    it "turns left and faces EAST" do
      @navigator.turn_left
      @navigator.direction.should == Directions::EAST
    end

    it "turns right and faces WEST" do
      @navigator.turn_right
      @navigator.direction.should == Directions::WEST
    end

    it "moves and stands at position (0, -1)" do
      @navigator.move
      @navigator.position.should == [0, -1]
    end
  end

  context "standing at position (0, 0) facing EAST" do
    before :each do
      @navigator = Navigator.new(Directions::EAST)
    end

    it "turns left and faces NORTH" do
      @navigator.turn_left
      @navigator.direction.should == Directions::NORTH
    end

    it "turns right and faces SOUTH" do
      @navigator.turn_right
      @navigator.direction.should == Directions::SOUTH
    end

    it "moves and stands at position (1, 0)" do
      @navigator.move
      @navigator.position.should == [1, 0]
    end
  end
end
