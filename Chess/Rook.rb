require_relative "Piece"
require_relative "Slideable"

class Rook < Piece
    attr_reader :possible_moves
    include Slideable
    @possible_moves = []

    HORIZONTAL_DIRS.each do |dirs|
        @possible_moves += moves(dirs)
    end

end