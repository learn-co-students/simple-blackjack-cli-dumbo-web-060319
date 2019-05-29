def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  number = rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  reply = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = 0 
  2.times { card_total += deal_card } 
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
  elsif input == "s"
    card_total = card_total 
  else
    invalid_command
  end 
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  player_total = initial_round
  until player_total > 21 
    player_total = hit?(player_total)
    display_card_total(player_total)
  end
  end_game(player_total)
end
    
