require "spec_helper"

describe Directions do
  describe "#from_s" do
    it "returns NORTH when given N" do
      Directions::from_s("N").should be_equal(Directions::NORTH)
    end
    
    it "returns SOUTH when given S" do
      Directions::from_s("S").should be_equal(Directions::SOUTH)
    end
    
    it "returns EAST when given E" do
      Directions::from_s("E").should be_equal(Directions::EAST)
    end
    
    it "returns WEST when given W" do
      Directions::from_s("W").should be_equal(Directions::WEST)
    end
    
    it "returns nil when given any other value" do
      Directions::from_s("").should be_nil
    end
  end
end