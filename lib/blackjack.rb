

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(the_card_total)
  puts "Your cards add up to #{the_card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  the_card_total = 0
  2.times do
    the_card_total += deal_card
  end
  display_card_total(the_card_total)
  the_card_total
end

def hit?(current_card_total)
  prompt_user
  case get_user_input
  when 's'
    current_card_total
  when "h"
    new_card = deal_card
    current_card_total + new_card
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  full_hand_sum = initial_round  #this captures 1st total
  until full_hand_sum > 21
    full_hand_sum = hit?(full_hand_sum)
    display_card_total(full_hand_sum)
  end
  end_game(full_hand_sum)
end
