require "spec_helper"

describe Rover, "Operate" do
end

describe Rover, "Facing North" do
  let(:rover) { Rover.new('N', [0, 0]) }

  context "when turning left" do
    it "returns west" do
      rover.turn_left
      expect(rover.direction).to be_an_instance_of Direction::West
      expect(rover.direction.to_s).to eq 'W'
    end
  end

  context "when turning right" do
    it "returns east" do
      rover.turn_right
      expect(rover.direction).to be_an_instance_of Direction::East
      expect(rover.direction.to_s).to eq 'E'
    end
  end

  context "when moving" do
    it "updates position to (0, 1)" do
      rover.move
      expect(rover.position).to eq [0, 1]
    end
  end
end

describe Rover, "facing WEST" do
  let (:rover) { Rover.new('W', [0, 0]) }

  context "when turning left" do
    it "returns south" do
      rover.turn_left
      expect(rover.direction).to be_an_instance_of Direction::South
      expect(rover.direction.to_s).to eq 'S'
    end
  end

  context "when turning right" do
    it "returns north" do
      rover.turn_right
      expect(rover.direction).to be_an_instance_of Direction::North
      expect(rover.direction.to_s).to eq 'N'
    end
  end

  context "moving" do
    it "updates position to (-1, 0)" do
      rover.move
      expect(rover.position).to eq [-1, 0]
    end
  end
end

describe Rover, "facing SOUTH" do
  let(:rover) { Rover.new('S', [0, 0]) }

  context "when turning left" do
    it "returns east" do
      rover.turn_left
      expect(rover.direction).to be_an_instance_of Direction::East
      expect(rover.direction.to_s).to eq 'E'
    end
  end

  context "when turning right" do
    it "turns west" do
      rover.turn_right
      expect(rover.direction).to be_an_instance_of Direction::West
      expect(rover.direction.to_s).to eq 'W'
    end
  end

  context "moving" do
    it "updates position to (0, -1)" do
      rover.move
      expect(rover.position).to eq [0, -1]
    end
  end
end

describe Rover, "facing EAST" do
  let(:rover) { Rover.new('E', [0, 0]) }

  context "when turning left" do
    it "returns north" do
      rover.turn_left
      expect(rover.direction).to be_an_instance_of Direction::North
      expect(rover.direction.to_s).to eq 'N'
    end
  end

  describe "#turn_right" do
    it "returns south" do
      rover.turn_right
      expect(rover.direction).to  be_an_instance_of Direction::South
      expect(rover.direction.to_s).to eq 'S'
    end
  end

  describe "#move" do
    it "stands at position (1, 0)" do
      rover.move
      expect(rover.position).to eq [1, 0]
    end
  end
end
