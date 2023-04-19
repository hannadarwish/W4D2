module Stepable
    KING_DIRS = 
    [[1,0],
    [-1,0]
    [0,1],
    [0,-1], 
    [1,1],
    [-1,-1],
    [-1,1],
    [1,-1] ]

    KNIGHT_DIRS = 
    [ [2, -1],
    [1, -2],
    [-1, 2],
    [-2, 1],
    [1, 2],
    [2, 1],
    [-1, -2],
    [-2, -1] ]

    def moves(x, y)
        current_x, current_y = pos
        current_x += x
        current_y += y
        temp_moves = []
        if (current_x.between?(0,7) && current_y.between?(0,7))
            if board[[current_x, current_y]].is_a?(NullPiece) 
                temp_moves << [current_x, current_y]  
            elsif self.color != board[[current_x, current_y]].color
                temp_moves << [current_x, current_y]  
            end
        end
        return temp_moves
    end


end