require_relative "Board"

class Piece

    attr_reader :color
    def initialize(symbol, board, pos)
        @color = symbol
        @board = board
        @pos = pos
    end


end