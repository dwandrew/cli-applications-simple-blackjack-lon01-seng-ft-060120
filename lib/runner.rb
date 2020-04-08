require_relative "blackjack.rb"

def runner
  welcome;
  total = initial_round
  hit?(total)
  if total > 21
    end_game
  else hit?(total)
  end;
end