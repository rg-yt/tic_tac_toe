# frozen_string_literal: true

require_relative 'game/board'
require_relative 'game/player'

class Game
  attr_reader :board, :players

  def initialize
    @players = [Player.new('X'), Player.new('O')]
    @board = Board.new
    play
  end

  def play; end

  def round
    players.each(&:take_turn)
  end

  def winner?; end

  def draw?; end
end
