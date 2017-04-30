# Battle!

Battle! is a Ruby battle web app built with Sinatra.

## Getting Started

### Installing

1. Clone this repo to local machine. 
2. Run `bundle` to install Gems.
3. Rackup is used as the webserver interface. From cloned repo, run `$ rackup config.ru` to load: 

```
User-MacBook-Pro:rps-challenge user$ rackup config.ru
[2017-04-30 14:01:43] INFO  WEBrick 1.3.1
[2017-04-30 14:01:43] INFO  ruby 2.4.0 (2016-12-24) [x86_64-darwin16]
[2017-04-30 14:01:43] INFO  WEBrick::HTTPServer#start: pid=5090 port=9292
```
4. Navigate to __http://localhost:9292/__ to play game. 

## Running the tests

Run tests with RSpec. From cloned directory, enter:

`$ rspec`

to run tests.

## Gameplay

Battle! is a turn-based, two-player fighting game. Players enter their name and play on same machine. The current move set is as follows:
   
* Attack - deals a random amount of damage to opponent
* Heal   - restores 20 HP to player
* Sleep  - attack with 50% chance of success. A successful hit deprives the opponent of their next turn which gives the attacker an                 additional turn.

The game is over when one player's HP reaches 0.

Have fun!

## Basic User Stories
```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

## Currently Implemented Bonus User Stories
```As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage

As a Player,
So I can enjoy a game of Battle with more variety,
I want to choose from a range of attacks I could make

As a Player,
So I can better enjoy a game of Battle,
I want to make an attack that has a chance of sending my Opponent to Sleep (Opponent definitely misses next turn)

As a Player,
So I can extend my joyous experience of Battle,
I want to have an attack that heals some of my Hit Points
```
