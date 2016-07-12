require "spec_helper"

describe Direction::West do
  let(:west) { Direction::West.new }

  context "when turning left" do
    it "returns south" do
      expect(west.turn_left).to be_an_instance_of Direction::South
    end
  end

  context "when turning right" do
    it "returns north" do
      expect(west.turn_right).to be_an_instance_of Direction::North
    end
  end

  context "to string" do
    it "returns W" do
      expect(west.to_s).to be_eql "W"
    end
  end

  context "when moving" do
    context "given current position (0, 0)" do
      it "returns (-1, 0)" do
        expect(west.move([0, 0])).to eq [-1, 0]
      end
    end
  end
end
