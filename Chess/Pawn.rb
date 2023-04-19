require_relative "Piece"

class Pawn < Piece
    attr_reader :possible_moves

    WHITE_PAWN_ATTACKS =
    [ [1, -1], [1, 1] ]

    BLACK_PAWN_ATTACKS = 
    [ [-1, -1], [-1, 1] ]

    def initialize(color, board, pos)
        super
        @possible_moves = []
    end

    def at_start_row?
        x, y = @pos 
        if (self.color == :B && x == 1) || (self.color == :W && x == 6)
            return true
        end
    false
    end

    def forward_dir
        if self.color == :B 
            return [1, 0]
        else 
            return [-1, 0]
        end
    end

    def side_attacks
        temp_moves = []
        if self.color == :B 
            BLACK_PAWN_ATTACKS.each { |attacks| temp_moves << attacks} 
        else 
            WHITE_PAWN_ATTACKS.each { |attacks| temp_moves << attacks} 
        end
        temp_moves.each do  |position| 
            if !board[position].is_a?(NullPiece) && self.color != board[position].color
                @possible_moves << position
            end

        end
    end

    def moves
        x, y = @pos

        direction = self.forward_dir
        x += direction[0]

        if board[@pos].is_a?(NullPiece)
            @possible_moves << @pos
        end

        if at_start_row?
            x += direction[0]
            if board[@pos].is_a?(NullPiece)
                @possible_moves << @pos
            end
        end

        self.side_attacks
    end

    def get_possible_moves
        self.moves
        return @possible_moves
    end

    def symbol
        "♙"
    end


end