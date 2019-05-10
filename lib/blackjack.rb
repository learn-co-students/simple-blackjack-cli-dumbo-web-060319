def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  #  Random number bewtween 1 and 11
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  # display the card total
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  # find the user's answer
  answer = gets.chomp
  answer
end

def end_game(final_total)
  # code #end_game here
  puts "Sorry, you hit #{final_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  # Initialize sum
  sum = 0
  # call Deal Card method, twice
  2.times do
    sum += deal_card()
  end
  
  # display sum
  display_card_total(sum)
  # print sum
  sum
end


def hit?(current_total)
  prompt_user
  ans = get_user_input()
  if ans == 'h'
    current_total += deal_card()
  elsif ans == 's'
    current_total
  else
    invalid_command
  end
end


def invalid_command
  # code invalid_command here
  "Please enter a valid command"
  prompt_user()
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  sum = initial_round()
  until sum > 21 do
    ans = hit?(sum)
    sum = 0
    sum += ans
    display_card_total(sum)
  end
  end_game(sum)
end

