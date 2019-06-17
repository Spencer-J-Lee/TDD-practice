class TowersHanoe
    attr_accessor :towers

    def initialize
        @towers = [
            [3,2,1],
            [],
            []
        ]
    end

    def play

    end

    def over?

    end

    def move
        # 1. prompts for input to select the tower to move from (integer)
        # 2. prompts for input to select the tower to move to (integer)
        # 3. checks if the move from tower to tower is valid
        #   - invalid : not a number from 0 2
        #   - invalid : pull from an empty position
        #   - invalid : from is larger than to
        # 4. moves the elements from tower to tower if valid


    end

    def valid_move?(start_tower, end_tower)
        return false unless start_tower.between?(0,2) && end_tower.between?(0,2)
        return false if towers[start_tower].empty?
        return false if towers[start_tower].last > towers[end_tower].last

        true
    end

    def display

    end
end

# if __FILE__ == $0
#     game = TowersHanoe.new
#     game.play
# end