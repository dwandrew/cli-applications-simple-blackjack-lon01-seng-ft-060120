def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
total =0
total +=deal_card
total += deal_card

display_card_total(total)
total

end

def invalid_command
  puts 'Please enter a valid command'
end

def hit?(num)
  prompt_user
  if get_user_input == 'h'
    num += deal_card;
    return num
  else if get_user_input =='s'
    return num;
  else invalid_command
   prompt_user
  end
end 
end