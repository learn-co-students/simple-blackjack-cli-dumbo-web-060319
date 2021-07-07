def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
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
  initial_round = deal_card + deal_card
  display_card_total(initial_round)
  initial_round
end

def hit?(player_total)
  prompt_user
  input = get_user_input
  if input == "h"
    player_total += deal_card
  elsif input == "s"
    player_total
  end
    


end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  player = initial_round 
  until player > 21 do
  player = hit?(player)
  display_card_total(player)
  end
end_game(player)
end
    
