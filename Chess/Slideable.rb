
module Slideable

    HORIZONTAL_DIRS = [[1,0],[-1,0],[0,1],[0,-1]]
    DIAGONAL_DIRS = [[1,1],[-1,-1],[-1,1],[1,-1]]

    require "byebug"

    def moves(x, y)
        current_x, current_y = pos
        temp_moves = []
        until (!current_x.between?(1,6) || !current_y.between?(1,6)) || !board[[current_x, current_y]].is_a?(NullPiece)
            current_x += x
            current_y += y
            temp_moves << [current_x, current_y]  
        end
        if self.color != board[[current_x, current_y]].color
            temp_moves << [current_x, current_y]      
        end
        return temp_moves
    end

end