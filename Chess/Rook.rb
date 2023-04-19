require_relative "Piece"
require_relative "Slideable"

class Rook < Piece
    attr_reader :possible_moves
    include Slideable

    def initialize(color, board, pos)
        super 
        @possible_moves = []
    end

    HORIZONTAL_DIRS.each do |dirs|
        @possible_moves += self.moves(dirs)
    end

    def symbol
        "♖"
    end

end