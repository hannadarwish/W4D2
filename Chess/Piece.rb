require_relative "Board"

class Piece

    attr_reader :color, :board
    def initialize(symbol, board, pos)
        @color = symbol
        @board = board
        @pos = pos
    end

    def to_s()
    
    end

    def valid_


end