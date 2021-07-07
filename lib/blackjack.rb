def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(deal_card)
  puts "Your cards add up to #{deal_card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(deal_card)
  puts "Sorry, you hit #{deal_card}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(ctotal)
  prompt_user
  input = get_user_input
  if input == "h"
    ctotal += deal_card
    return ctotal
  elsif input == 's'
    return ctotal
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
player_card_total = initial_round
  until player_card_total > 21
    player_card_total = hit?(player_card_total)
    display_card_total(player_card_total)
  end
  end_game(player_card_total)
end