def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
sum = deal_card + deal_card
   display_card_total(sum)
   return sum
end

def hit?(total)
  prompt_user
  input = get_user_input
    if input == 'h'
      total += deal_card
    elsif input == 's'
      total
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
  total = initial_round
  until total > 21
      total = hit?(total)
      display_card_total(total)
  end
end_game(total)
end
    
