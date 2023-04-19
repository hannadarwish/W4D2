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

    def at_start_row?(x)
        if (self.color == :B && x == 1) || (self.color == :W && x == 6)
            return true
        end
    false
    end

    def forward_dir
        if self.color == :B 
            return 1
        else 
            return -1
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
        current_x, current_y = pos

        direction = self.forward_dir
        current_x += direction

        if board[[current_x, current_y]].is_a?(NullPiece)
            @possible_moves << [current_x, current_y]
        end

        if at_start_row?(current_x)
            current_x += direction
            if board[[current_x, current_y]].is_a?(NullPiece)
                @possible_moves << [current_x, current_y]
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