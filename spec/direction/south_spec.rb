require "spec_helper"

describe Direction::South do
  let(:south) { Direction::South.new }

  context "when turning left" do
    it "returns east" do
      expect(south.turn_left).to be_an_instance_of Direction::East
    end
  end

  context "when turning right" do
    it "returns west" do
      expect(south.turn_right).to be_an_instance_of Direction::West
    end
  end

  context "to string" do
    it "returns S" do
      expect(south.to_s).to be_eql "S"
    end
  end

  context "when moving" do
    context "given position (0, 0)" do
      it "returns (0, -1)" do
        expect(south.move([0, 0])).to eq [0, -1]
      end
    end
  end
end
