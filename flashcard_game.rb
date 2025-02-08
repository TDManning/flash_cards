# flashcard_game.rb

require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

# Create card instances
card_1 = Card.new("What is 5 + 5?", "10", :STEM)
card_2 = Card.new("What is Rachel's favorite animal?", "panda", "Turing")
card_3 = Card.new("What is Mike's middle name?", "nobody knows", "Turing")
card_4 = Card.new("What cardboard cutout lives at Turing?", "Justin Bieber", "Turing")

# Store cards in an array and initialize the deck
cards = [card_1, card_2, card_3, card_4]
deck = Deck.new(cards)

# Initialize the round
round = Round.new(deck)

# Start game
puts "Welcome to Flashcard Game!"
puts "You have #{deck.count} cards in your deck. Let's begin!\n\n"

# Iterate over each card in the deck
deck.cards.each do
  puts "---------------------------------"
  puts "Question: #{round.current_card.question}"
  print "> "
  guess = gets.chomp
  turn = round.take_turn(guess)
  puts turn.feedback
end

# End of game summary
puts "\nGame Over!"
puts "You got #{round.number_correct} out of #{round.turns.count} correct (#{round.percent_correct.round(2)}%)."

# Display category-wise correctness
deck.cards.map(&:category).uniq.each do |category|
  puts "Your score for #{category}: #{round.percent_correct_by_category(category).round(2)}%"
end
