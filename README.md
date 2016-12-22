# CLI Hangman

## Objectives

1. Build a CLI
2. Create a domain model with multiple relating and collaborating objects.

## Requirements
  - 0, 1 or 2 player Hangman.
  - Command Line Interface
  - Computer AI?

## Tentative Plan
 - Begin with asking someone if they want to play with 0, 1, or 2 players
 - One player guesses, one person picks new word
 - If player guess is right, add it to "board" (_ _ _ )
 - If player guess is wrong, show the hangman (have ASCII drawing?) Increase body parts every time they are wrong
 - Until player guesses word or has the whole body, keep doing this
  -When they have won/lost, ask if they want to play again

## Things to do once MVP is done
- Generate random word from API?
- Pick word method edit for computer
- When someone types word, should be stars
- Have messages be better so user always knows what's going on
- Use composition instead of Inheritance!
- Refactor  
