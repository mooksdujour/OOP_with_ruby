require "spec_helper"
 
module TicTacToe
  describe Player do
    context "#initialize" do
 
      it "raises an exception when initialized with {}" do
        expect { Player.new({}) }.to raise_error
      end
 
      it "does not raise an error when initialized with a valid input hash" do
        input = { mark: "X", name: "Player 1" }
        expect { Player.new(input) }.to_not raise_error
      end

    end

    context "#mark" do
      it "returns the mark" do
        input = { mark: "X", name: "Jack" }
        player = Player.new(input)
        expect(player.mark).to eq "X"
      end
    end
 
    context "#name" do
      it "returns the player's name" do
        input = { mark: "X", name: "Jill" }
        player = Player.new(input)
        expect(player.name).to eq "Jill"
      end
    end

  end
end