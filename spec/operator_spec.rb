require "spec_helper"

describe Operator do
  
  describe "#receive" do
    before :each do
      @rover = double("rover")
      @operator = Operator.new(@rover)
    end
    
    context "given input L" do
      it "turns the rover left" do
        @rover.should_receive :turn_left
        @operator.receive "L"
      end
    end
    
    context "given input R" do
      it "turns the rover right" do
        @rover.should_receive :turn_right
        @operator.receive "R"
      end
    end
    
    context "given input M" do
      it "moves the rover" do
        @rover.should_receive :move
        @operator.receive "M"
      end
    end
    
    context "given input diferent of L, R or M" do
      it "ignores the input and let the rover still" do
        @rover.should_not_receive :move
        @rover.should_not_receive :turn_left
        @rover.should_not_receive :turn_right
        @operator.receive "XPTO"
      end
    end
    
    context "given input LL" do
      it "turns the rover left twice" do
        @rover.should_receive(:turn_left).twice
        @operator.receive "LL"
      end
    end
    
    context "given input LR" do
      it "turns the rover left than right" do
        @rover.should_receive :turn_left
        @rover.should_receive :turn_right
        @operator.receive "LR"
      end
    end
    
    context "given input MM" do
      it "moves the rover twice" do
        @rover.should_receive(:move).twice
        @operator.receive "MM"
      end
    end
    
    context "given input LRMMRL" do
      it "turns left the rover, turns right the rover, move the rover twice, turns the rover right, turns the rover left" do
        @rover.should_receive :turn_left
        @rover.should_receive :turn_right
        @rover.should_receive(:move).twice
        @rover.should_receive :turn_right
        @rover.should_receive :turn_left
        @operator.receive "LRMMRL"
      end
    end
  end
end
