##  Flash Cards

This is the starter repository for the [Flash Cards](http://backend.turing.io/module1/projects/flashcards) project.

# Flashcard Game

## Overview
This is a simple command-line flashcard game built in Ruby. The game consists of a deck of flashcards, where each card has a question, an answer, and a category. Players take turns guessing answers to questions, and their performance is tracked by accuracy and category statistics.

## Features
- Create flashcards with a question, answer, and category
- Store flashcards in a deck
- Track turns and responses
- Calculate overall and category-specific accuracy
- Provide feedback on guesses

## Installation
1. **Clone the Repository**
   ```sh
   git clone <repository-url>
   cd flashcard_game
   ```

2. **Install Dependencies**
   Ensure you have Ruby installed (preferably version 2.7+).
   If using `pry` for debugging, install it using:
   ```sh
   gem install pry
   ```

3. **Run Tests**
   Run the test suite using RSpec to ensure everything works:
   ```sh
   rspec
   ```

## How to Play
1. **Start the Game**
   Run the following command in your terminal:
   ```sh
   ruby flashcard_game.rb
   ```

2. **Game Flow**
   - You will be presented with a question.
   - Type your answer and press `Enter`.
   - The game will check if your answer is correct.
   - You will receive immediate feedback (`Correct!` or `Incorrect.`).
   - The game will track your accuracy and provide statistics at the end.

3. **Game Example**
   ```
   Welcome to Flashcard Game!
   Here is your first question:
   What is 5 + 5?
   > 10
   Correct!
   
   What is Rachel's favorite animal?
   > dog
   Incorrect.
   
   Game Over!
   You got 1 out of 2 correct (50%).
   ```

## Project Structure
```
flashcard_game/
│── lib/
│   ├── card.rb
│   ├── deck.rb
│   ├── round.rb
│   ├── turn.rb
│── spec/
│   ├── card_spec.rb
│   ├── deck_spec.rb
│   ├── round_spec.rb
│   ├── turn_spec.rb
│── flashcard_game.rb
│── README.md
```

## Author
**Terra Manning**  
[LinkedIn Profile](https://www.linkedin.com/in/terramanning)


