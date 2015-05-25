class Game

def evaluate_guess(current_guess)
    results = { :exact => [], :near => [] }
    current_guess.each_with_index do |choice, position|
      if exact_match?(choice, position)
        results[:exact] << true
      elsif near_match?(choice)
        results[:near] << true
      end
    end
    results
  end
 
  def near_match?(choice)
    @comp.code_combination.include?(choice)
  end
 
  def exact_match?(choice, position)
    choice == @comp.code_combination[position]
  end
end
 
  def initialize
    @code_combination = code
  end
 
  def code
    colors = Game::COLORS.shuffle
    generated_code = []
    4.times{ generated_code << colors.pop }
    generated_code
  end
end
 