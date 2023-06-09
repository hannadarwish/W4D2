require_relative "Piece"
require_relative "Slideable"

class Bishop < Piece

    attr_reader :possible_moves
    include Slideable
    @possible_moves = []

    def initialize(color, board, pos)
        super 
        @possible_moves = []
    end

    def move_in_dir
        DIAGONAL_DIRS.each do |dirs|
            x, y = dirs
            @possible_moves += moves(x, y)
        end
    end

    def get_possible_moves
        self.move_in_dir
        return @possible_moves
    end

    def symbol
        "♗".colorize(color)
    end
    

end