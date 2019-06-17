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
        until over?
            display

            puts "Choose which tower to pull from: "
            start_tower = gets.to_i

            puts "Choose which tower to add to: "
            end_tower = gets.to_i

            move(start_tower, end_tower)
        end
        
        puts "You win"
    end

    def over?
        [1,2].any? { |n| towers[n] == [3,2,1] }
    end

    def move(start_tower, end_tower)
        unless valid_move?(start_tower, end_tower)
            puts "Invalid move"
            return sleep 1
        end

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
        system 'clear'

        towers.each_with_index do |tower, tower_num|
            print "Tower #{tower_num}: "
            tower.each { |n| print n.to_s + " " }
            puts
        end
    end
end

if __FILE__ == $0
    game = TowersHanoe.new
    game.play
end