require_relative "Board"


class Piece

    attr_reader :color
    def initialize(symbol)
        @color = symbol
        # @board = board
        # @pos = pos
    end


end