require_relative "blackjack.rb"

def runner
  welcome
  total = initial_round
  if total < 21
  total= hit?(total)
  display_card_total(total)
  end
  end_game(total)
end