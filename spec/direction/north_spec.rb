require "spec_helper"

describe Direction::North do
  let(:north) { Direction::North.new }

  context "when turning left" do
    it "returns west" do
      expect(north.turn_left).to be_an_instance_of Direction::West
    end
  end

  context "when turning right" do
    it "returns east" do
      expect(north.turn_right).to be_an_instance_of Direction::East
    end
  end

  context "to string" do
    it "returns N" do
      expect(north.to_s).to be_eql "N"
    end
  end

  context "when moving" do
    context "with current position at (0, 0)" do
      it "returns (0, 1)" do
        expect(north.move([0, 0])).to eq [0, 1]
      end
    end
  end


end
