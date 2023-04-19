require_relative "Board"

class Piece

    attr_reader :color, :board
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    # def to_s()
    
    # end

    # def valid_


end