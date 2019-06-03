def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  random=rand(1..11)
  return random 
end

def display_card_total(arg)
  # code #display_card_total here
  puts "Your cards add up to #{arg}"
  return arg
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  z=gets.chomp 
  return z
end

def end_game(arg)
  # code #end_game here
  puts "Sorry, you hit #{arg}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum1=deal_card
  sum2=deal_card
  sum3=sum1+sum2
  sum4=display_card_total(sum3)
  return sum4
  
end

def hit?(arg)
  # code hit? here
  prompt_user
  input= get_user_input
  if input == "h"
    dealed=deal_card
    arg=arg + dealed 
  elsif input != "s"
    invalid_command
    prompt_user
  end 
  return arg 
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valud command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

  welcome 
  x=initial_round
  until x > 21 
    x=hit?(x)
    display_card_total(x)
  end 
  end_game(x)
end
    
