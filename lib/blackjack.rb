def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
  p num

  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(final)
  puts "Sorry, you hit #{final}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total=deal_card
  total +=deal_card
  display_card_total(total)
  total
 
  # code #initial_round here
end



def hit?(num)
  total= num
  prompt_user
  input = get_user_input
    if input== 's'
      total += 0 
    elsif input == 'h'
      total+= deal_card
    elsif input != 'h' || 's' 
      invalid_command
      prompt_user
      get_user_input
      end
  total
  # code hit? here
end
#end

def invalid_command
  puts "Please enter a valid command"
  
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  if total <= 21
  total= hit?(total)
  display_card_total(total)
  end
  end_game(total)
  # code runner here
end
    
