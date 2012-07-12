require_relative "../src/rover" 
require_relative "../src/navigator"  
require_relative "../src/communicator"

describe Rover do
  context "at position (1, 2) facing NORTH" do
    
    it "receive the command LMLMLMLMM and stands at location (1, 3) facing NORTH" do
      navigator = Navigator.new(Navigator::NORTH, [1, 2])
      rover = Rover.new(navigator)
      communicator = Communicator.new(rover) 
      
      communicator.receive("LMLMLMLMM")
      
      rover.direction.should == Navigator::NORTH
      rover.position.should == [1, 3]
    end
    
  end
  
  context "at position (3, 3) facing EAST" do
    
    it "receive the command MMRMMRMRRM and stands at location (5, 1) facing EAST" do
      navigator = Navigator.new(Navigator::EAST, [3, 3])
      rover = Rover.new(navigator)
      communicator = Communicator.new(rover)
      
      communicator.receive("MMRMMRMRRM")
      
      rover.direction.should == Navigator::EAST
      rover.position.should == [5, 1]
    end
    
  end
end