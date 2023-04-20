require_relative "Board"
require "colorize"

class Display

    def initialize(board)
        @board = board
    end

    def render(board)
        render = @board.rows.map {|row| row.map { |ele| ele = ele.symbol } }
        render.each do |row|
            puts row.join(" ")
        end
    end
end