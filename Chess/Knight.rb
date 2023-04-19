require_relative "Piece"

class Knight < Piece
    attr_reader :possible_moves
    include Slideable

    def initialize(color, board, pos)
        super 
        @possible_moves = []
    end

    def move_in_dir
        KNIGHT_DIRS.each do |dirs|
            @possible_moves += dirs
        end
    end

    def get_possible_moves
        self.move_in_dir
        return @possible_moves
    end
    
    def symbol
        "♘"
    end
    

end