require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def card_total(num1, num2)
  card_total = num1 + num2
end

def display_card_total(card_total)
  # code #display_card_total here 
  number = deal_card
  puts "Your cards add up to #{card_total}"
end


def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end


def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(card_total) 
  prompt_user
  input = get_user_input
  until input == 's' || input == 'h'
  prompt_user
  input = get_user_input
end

  if input == 'h'
    card_total += deal_card
  elsif input == 's'
    card_total
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

   def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end 
