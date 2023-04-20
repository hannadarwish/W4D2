require_relative "Piece"

class King < Piece
    attr_reader :possible_moves
    include Slideable

    def initialize(color, board, pos)
        super 
        @possible_moves = []
    end

    def move_in_dir
        KING_DIRS.each do |dirs|
            x, y = dirs
            @possible_moves += moves(x, y)
        end
    end

    def get_possible_moves
        self.move_in_dir
        return @possible_moves
    end

    def symbol
        "♔".colorize(color)
    end
    
    
end