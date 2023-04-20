
require_relative "NullPiece"


class Board 

    attr_reader :rows
    def initialize 
        @nullpiece = NullPiece.instance
        @rows = Array.new(8) { Array.new(8, @nullpiece) }
        self.populate_board
    end

    def populate_board
        black_back_row = []
        white_back_row = []

        i = 0
        while i < 8
            @rows[1][i] = Pawn.new(:black, self, [1][i])
            @rows[6][i] = Pawn.new(:white, self, [6][i])
            i += 1
        end

        @rows[0][0] = Rook.new(:black, self, [0,0])
        @rows[0][7] = Rook.new(:black, self, [0,7])
        @rows[0][1] = Knight.new(:black, self, [0,1])
        @rows[0][6] = Knight.new(:black, self, [0,6])
        @rows[0][2] = Bishop.new(:black, self, [0,2])
        @rows[0][5] = Bishop.new(:black, self, [0,5])
        @rows[0][3] = Queen.new(:black, self, [0,3])
        @rows[0][4] = King.new(:black, self, [0,4])

        @rows[7][0] = Rook.new(:white, self, [7,0])
        @rows[7][7] = Rook.new(:white, self, [7,7])
        @rows[7][1] = Knight.new(:white, self, [7,1])
        @rows[7][6] = Knight.new(:white, self, [7,6])
        @rows[7][2] = Bishop.new(:white, self, [7,2])
        @rows[7][5] = Bishop.new(:white, self, [7,5])
        @rows[7][3] = Queen.new(:white, self, [7,3])
        @rows[7][4] = King.new(:white, self, [7,4])

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

# b = Board.new
# # b.move_piece(:B, [0, 0], [2, 1])
# p b.rows