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

    def move(start_tower, end_tower)
        # 1. prompts for input to select the tower to move from (integer)
        # 2. prompts for input to select the tower to move to (integer)
        # 3. checks if the move from tower to tower is valid
        #   - invalid : not a number from 0 2
        #   - invalid : pull from an empty position
        #   - invalid : from is larger than to
        # 4. moves the elements from tower to tower if valid
        raise "Invalid move" unless valid_move?(start_tower, end_tower)

        towers[end_tower] << towers[start_tower].pop
    end

    def valid_move?(start_tower, end_tower)
        return false unless [start_tower, end_tower].all? { |n| n.between?(0,2) }
        return false if towers[start_tower].empty?

        unless towers[end_tower].last.nil?
            return false if towers[start_tower].last > towers[end_tower].last
        end

        true
    end

    def display

    end
end

# if __FILE__ == $0
#     game = TowersHanoe.new
#     game.play
# end