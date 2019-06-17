require 'rspec'
require 'towers_of_hanoe'

# Keep three arrays, which represents the piles of discs. 
# Pick a representation of the discs to store in the arrays; maybe just a number representing their size. 
# Don't worry too much about making the user interface pretty.

# In a loop, prompt the user (using gets) and ask what pile to select a disc from, and where to put it.

# After each move, check to see if they have succeeded in moving all the discs, to the final pile. If so, they win!

# Note: don't worry about testing the UI. Testing console I/O is tricky (don't bother checking gets or puts). Focus on:

# #move
# #won?

describe TowersHanoe do
    subject(:game) { TowersHanoe.new }

    describe "#initialize" do
        it "creates an instance variable @towers that contains a 2D-array of three arrays" do
            expect(game.towers.count).to eq(3)
            expect(game.towers.all? { |tower| tower.is_a?(Array) }).to eq(true)
        end

        it "@towers holds three elements in the first array and none in the others" do
            expect(game.towers[0].count).to eq(3)
            expect(game.towers[1]).to be_empty
            expect(game.towers[2]).to be_empty
        end     
    end

    describe "#valid_move?" do 
        it "returns false if either argument is not a number from 0 to 2" do
            expect(game.valid_move?(0,3)).to be(false)
            expect(game.valid_move?(3,0)).to be(false)
            expect(game.valid_move?(3,3)).to be(false)
        end
        
        it "returns false if pulling from an empty tower" do
            expect(game.valid_move?(1,0)).to be(false)
            expect(game.valid_move?(2,0)).to be(false)
        end
        
        it "returns false if starting disc is larger than the ending disc" do
            game.towers = [[3,2],[1],[]]
            expect(game.valid_move?(0,1)).to be(false)
        end
    end

    describe "#move" do
        it "raises an error if valid_move? returns false" do
            expect {game.move(0,3)}.to raise_error("Invalid move")
        end

        it "moves the last element of the start tower to the last element of the end tower" do
            game.move(0,2)
            expect(game.towers).to eq([[3,2],[],[1]])
        end
    end

end