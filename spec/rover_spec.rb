require "spec_helper"

describe Rover do  
  context "standing at position (0, 0)" do
    context "facing NORTH" do
      let(:rover) {Rover.new (Directions::NORTH)}
    
      describe "#turn_left" do    
        it "faces WEST" do
          rover.turn_left
          rover.direction.should == Directions::WEST
        end
      end
    
      describe "#turn_right" do
        it "faces EAST" do
          rover.turn_right
          rover.direction.should == Directions::EAST
        end      
      end                 
    
      describe "#move" do
        it "stands at position (0, 1)" do
          rover.move
          rover.position.should == [0, 1]
        end
      end
    end
  
    context "facing WEST" do
      let (:rover) {Rover.new(Directions::WEST)}
   
      describe "#turn_left" do
        it "faces SOUTH" do
          rover.turn_left
          rover.direction.should == Directions::SOUTH
        end
      end
    
      describe "#turn_right" do  
        it "faces NORTH" do
          rover.turn_right
          rover.direction.should == Directions::NORTH
        end
      end
    
      describe "#move" do   
        it "stands at position (-1, 0)" do
          rover.move
          rover.position.should == [-1, 0]
        end
      end
    end  
  
    context "facing SOUTH" do
      let(:rover) {Rover.new(Directions::SOUTH)}
    
      describe "#turn_left" do
        it "faces EAST" do
          rover.turn_left
          rover.direction.should == Directions::EAST
        end
      end
    
      describe "#turn_right" do
        it "faces WEST" do
          rover.turn_right
          rover.direction.should == Directions::WEST
        end
      end
    
      describe "#move" do
        it "stands at position (0, -1)" do
          rover.move
          rover.position.should == [0, -1]
        end
      end
    end
  
    context "facing EAST" do
      let(:rover) {Rover.new(Directions::EAST)}
    
      describe "#turn_left" do
        it "faces NORTH" do
          rover.turn_left
          rover.direction.should == Directions::NORTH
        end
      end

      describe "#turn_right" do
        it "faces SOUTH" do
          rover.turn_right
          rover.direction.should == Directions::SOUTH
        end
      end
    
      describe "#move" do
        it "stands at position (1, 0)" do
          rover.move
          rover.position.should == [1, 0]
        end
      end
    end
  end
end
