require 'pry'

class BadHangman
  attr_reader :answer


  def initialize
    @answer = ["Simple", "Extrodinary", "Somnambulant", "Prestigious", "Gremlin"].sample
    @user_has_won = false
    @tries = 7
  end

  def over?
    won? || lost?
  end

  def won?
    @user_has_won
  end

  def lost?
    @tries.zero?
  end
end
