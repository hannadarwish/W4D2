
module Slideable

    HORIZONTAL_DIRS = [[1,0],[-1,0],[0,1],[0,-1]]
    DIAGONAL_DIRS = [[1,1],[-1,-1],[-1,1],[1,-1]]

    def moves(dirs)
        x, y = pos
        temp_moves = []
        until (!x.between?(0,7) || !y.between?(0,7)) || board[pos].is_a?(NullPiece)
            temp_moves << pos
            x += dirs[0]
            y += dirs[1]
        end
        if self.color != board[pos].color
            temp_moves << pos
        end
        return temp_moves
    end

end