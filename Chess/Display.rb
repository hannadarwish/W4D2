require_relative "Board"
require_relative "Cursor"
require "colorize"

class Display

    attr_reader :board, :cursor

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], board)
    end

    def render(board)
        render = @board.rows.map {|row| row.map { |ele| ele = ele.symbol } }
        render.each do |row|
            puts row.join(" ")
        end
    end
end