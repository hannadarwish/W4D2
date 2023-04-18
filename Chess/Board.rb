
require_relative "NullPiece"


class Board 

    attr_reader :rows
    def initialize 
        @null_piece = NullPiece.instance
        black = Array.new(2) {Array.new(8) {Piece.new(:B)}} 
        blank = Array.new(4) {Array.new(8, @null_piece)} 
        white = Array.new(2) {Array.new(8) {Piece.new(:W)}} 
        @rows = black + blank + white

    end
    

    def [](pos)
        x, y = pos
        @rows[x][y]
    end
    
    def []=(pos, value)
        x, y = pos
        @rows[x][y] = value
    end

    def move_piece(color, start_pos, end_pos)

        raise "Wrong Start Position" if self[start_pos].is_a?(NullPiece)

        if !end_pos[0].between?(0,7) || !end_pos[1].between?(0,7)
            raise "Invalid End Position" 
        elsif self[end_pos].color == color 
            raise "Invalid End Position" 
        end

        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    end





end

b = Board.new
# b.move_piece(:B, [0, 0], [2, 1])
p b.rows