require_relative "../src/rover"

describe Rover do
  context "is facing NORTH" do
    before :each do
      @rover = Rover.new(:north)
    end
    
    it "turn left and should be facing WEST" do
      @rover.turn_left
      @rover.direction.should == :west
    end
    
    it "turn right and should be facing EAST" do
      @rover.turn_right
      @rover.direction.should == :east
    end
    
    context "standing at position (0,0)" do
      it "move and should be at (0, 1)" do
        @rover.move
        @rover.position.should == [0, 1]
      end
    end
  end
  
  context "is facing WEST" do 
    before :each do
      @rover = Rover.new(:west)
    end
      
    it "turn left and should be facing SOUTH" do
      @rover.turn_left
      @rover.direction.should == :south
    end
    
    it "turn right and should be facing NORTH" do
      @rover.turn_right
      @rover.direction.should == :north
    end
    
    context "standing at position (0, 0)" do
      it "move and should be at (-1, 0)" do
        @rover.move
        @rover.position.should == [-1, 0]                  
      end
    end
  end
end