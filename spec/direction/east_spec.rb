require "spec_helper"

describe Direction::East do
  let(:east) { Direction::East.new }

  context "when turning left" do
    it "returns north" do
      expect(east.turn_left).to be_an_instance_of Direction::North
    end
  end

  context "when turning right" do
    it "returns south" do
      expect(east.turn_right).to be_an_instance_of Direction::South
    end
  end

  context "to string" do
    it "returns E"do
      expect(east.to_s).to be_eql "E"
    end
  end

  context "when moving" do
    context "with current position at (0, 0)" do
      it "returns (1, 0)" do
        expect(east.move([0, 0])).to eq [1, 0]
      end
    end
  end
end
