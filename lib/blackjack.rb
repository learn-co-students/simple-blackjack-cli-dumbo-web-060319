def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total total
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game total
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
  display_card_total(first + second)
  first + second
end

def hit? total
  prompt_user
  input = get_user_input
  if input == 's'
  elsif input == 'h'
    new_tot = deal_card
    total += new_tot
  else 
    invalid_command
    prompt_user
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  curr = initial_round
  until curr > 21
    curr = hit?(curr)
    display_card_total(curr)
  end
  end_game(curr)
end
    
