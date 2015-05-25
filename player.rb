require "./games"

game = BadHangman.new

class Player
  def guess_letter
    puts "What is your guess?" 
    gets.chomp
  end
end 
  
def 
  player
end
  
until game.over?
  letter = player.guess_letter
  result = game.check_letter letter
  puts "Your guess was: #{result}"
end

if game.won?
  puts "You Bad!."
elsif game.lost?
  puts "Who's Bad?...Not You!"
  puts "The answer was #{game.answer}, I'm BadHangman!"
end
