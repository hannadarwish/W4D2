require_relative "Piece"
require "singleton"


class NullPiece < Piece
    include Singleton
    def initialize
    end

    def symbol
        "🨀"
    end
end

