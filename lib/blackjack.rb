def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  card=gets.chomp
end

def end_game(card_total)
puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum=0
  first=deal_card
  sum+=first
  second=deal_card
  sum+=second
  display_card_total(sum)
  sum
end

def hit?(number)
  prompt_user
  user_word=get_user_input
  if user_word == "h"
    new_card=deal_card
    number+=new_card
  elsif user_word== "s"
    number
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
    value=initial_round

    until value > 20 do
    step=hit?(value)
    display_card_total(step)
    value=step
    end
    end_game(value)
end
    
