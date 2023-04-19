require_relative "Piece"
require_relative "Slideable"

class Bishop

    attr_reader :possible_moves
    include Slideable
    @possible_moves = []

    DIAGONAL_DIRS.each do |dirs|
        @possible_moves += moves(dirs)
    end

    def symbol
        "♗"
    end
    

end