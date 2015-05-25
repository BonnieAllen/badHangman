class Hangman
  
  def initialize
    list = ["banana", "table", "awesome", "patient", "opportunity", "chicago", "roosevelt", "gucci", "golden", "amazing"]
    @word = list.sample
    @letters_in_word = @word.split("") # word.chars
    @tries = 5

    @board = [] # Array of underscores
    @letters_in_word.each do |letter|
      @board.push "_"
    end
  end

  def over?
    @tries == 0 || @board.join("") == @word
  end

  # attr_reader :board
  def show_me_the_board
    @board
  end

  attr_reader :tries

  def record_letter the_letter_that_was_guessed
    have_seen_a_match = false

    index = 0
    @letters_in_word.each do |letter|
      if letter == the_letter_that_was_guessed
        have_seen_a_match = true
        @board[index] = letter
      end
      index += 1
    end

    if have_seen_a_match
      puts "Your guess was right"
    else
      puts "Your guess was wrong"
      @tries -= 1
    end
  end
end