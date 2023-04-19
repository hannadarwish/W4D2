require_relative "Piece"

class Knight < Piece
    attr_reader :possible_moves
    include Slideable

    def initialize(color, board, pos)
        super 
        @possible_moves = []
    end

    KNIGHT_DIRS.each do |dirs|
        @possible_moves += dirs
    end
    

end