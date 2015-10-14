#Rock, paper, scissors program

CHOICES = {'r' => 'rock', 'p' => 'paper', 's' => 'scissors'}

def display_winner_msg(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper wraps rock."
  when 's'
    puts "Scissors cuts paper."
  else 
    puts "Rock breaks scissors."
  end
end



puts "Welcome to my Rock, Paper, Scissors game!"

loop do

  puts "Choose: r, p, s."

  user_choice = gets.chomp.downcase
  while CHOICES.keys.include?(user_choice) == false
    puts "Choose: r, p, s."
    user_choice = gets.chomp
  end

  computer_choice = CHOICES.keys.sample

  if user_choice == computer_choice
    puts "It's a tie. You both chose #{CHOICES[user_choice]}."
  
  elsif (user_choice == 'r' && computer_choice == 's') || (user_choice == 's' && computer_choice == 'p') || (user_choice == 'p' && computer_choice == 'r')
    display_winner_msg(user_choice)
    puts "You won!"
  else
    display_winner_msg(computer_choice)
    puts "You lost."
  end

  puts "Enter 'y' to play again!"
  break if gets.chomp.downcase != 'y'
end
  
puts "bye"


