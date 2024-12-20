# frozen_string_literal: true

class Board
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def draw?
    @board.none?(Integer)
  end

  def winner?
    diagonal_win? || across_win? || vertical_win?
  end

  def diagonal_win?
    @board[0] == @board[4] && @board[4] == @board[8]
  end

  def across_win?; end

  def vertical_win?; end
end
