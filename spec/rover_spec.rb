require_relative "../src/rover"
require_relative "../src/directions"

describe Rover do
  context "is standing at position (0,0) facing NORTH" do
    before :each do
      @rover = Rover.new(Directions::NORTH)
    end
    
    it "turn left and should be facing WEST" do
      @rover.turn_left
      @rover.direction.should == Directions::WEST
    end
    
    it "turn right and should be facing EAST" do
      @rover.turn_right
      @rover.direction.should == Directions::EAST
    end
    
    it "move and should be standing at position (0, 1)" do
      @rover.move
      @rover.position.should == [0, 1]
    end
  end
  
  context "is standing at position (0, 0) facing WEST" do 
    before :each do
      @rover = Rover.new(Directions::WEST)
    end
      
    it "turn left and should be facing SOUTH" do
      @rover.turn_left
      @rover.direction.should == Directions::SOUTH
    end
    
    it "turn right and should be facing NORTH" do
      @rover.turn_right
      @rover.direction.should == Directions::NORTH
    end

    it "move and should be standing at position (-1, 0)" do
      @rover.move
      @rover.position.should == [-1, 0]                  
    end

  end
  
  context "is standing at position (0,0) facing SOUTH" do
    before :each  do
      @rover = Rover.new(Directions::SOUTH)
    end
    
    it "turn left and should be facing WEST" do
      @rover.turn_left
      @rover.direction.should == Directions::WEST
    end
    
    it "turn right and should be facing EAST" do
      @rover.turn_right
      @rover.direction.should == Directions::EAST
    end
    
    it "move and should be standing at position (0, -1)" do
      @rover.move
      @rover.position.should == [0, -1]
    end 
  end
end