require_relative "Piece"
require_relative "Slideable"

class Bishop
    include Slideable

    def symbol
        "♗"
    end
    

end