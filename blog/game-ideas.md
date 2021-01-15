<!--
title: Game Ideas
date: 2021-01-15
update: 2021-01-15
-->

## NGU: Number Go Up!

A game about numbers going up.

### Gameplay Rules

The game is inspired by [Incremental Merge](https://mrredshark77.github.io/incremental-merge/), so things will be described with that in mind.

* You have a pool of numbers, like cards in a card game
* You gain new numbers by waiting or merging numbers during a fight
* When you merge numbers enemies take damage for the given merge (1+1 = 2 damage)
* You have a main number that is your HP
* Enemies are also just numbers and deal damage to your main number over time (not turn based)
* Win condition is generally just killing all enemies in a given room without having your HP drop below 0

### Metagameplay

A roguelite Slay the Spire-like where you go from node to node fighting numbers with your own numbers. Unlike StS, your pool of numbers
is constant throughout the game, meaning you don't renew your numbers every fight. As you go through the map and merge more and more numbers
you get more powerful. While in the first fight you might be merging 1+1, in further fights you might be merging 60+60 by default and so on.

There are rooms where you can increase your number pool without having to wait or merge them in a fight. There are rooms where you can also find
artifacts, items, more HP, etc. In general special items and artifacts might give you various bonuses, like getting more numbers per merge, increasing
the base number of your generated numbers, effects when you deal damage to enemies, when specific types of numbers are merged (like primes), etc.

### Gameplay Elements

* HP
* Number pool
* Damage
* Base number generation (when you generate a number from waiting by default it's 1, you want this to increase as you get more powerful)
* Number generation rate (how fast numbers are generated from waiting)
* Merge number generation rate (generate more than 1 number per merge)
* Number properties: odd/even, primes, numbers that are valid for a certain formula, etc

### Modifiers

* +- HP
* +- damage
* +- base number generation
* +- number generation rate
* +- merge number generation rate
* +- damage on [number property]
* +- damage taken on [number property]
* Deal damage on [event], where [event] = merge, new number generated, damage taken, property reached, etc
* ...

It's pointless to keep listing these here because they just come pretty obviously. The various ways in which you can create interesting
items out of this system is just natural because it's basically just like any turn based card game, and the mechanics for those are endless.

<br>

## JUGGLRX

A game about juggling balls.

### Gameplay Rules

* You have 1 or more paddles, and you can switch between them with the 1-4 keys
* If a ball falls you lose 1 HP for the currently selected paddle
* If a paddle loses all its HP it can't be selected again until it's revived
* Paddles have special skills that help with juggling more balls
* Win condition depends on the current map, but might vary between:
  * Juggling `n` balls for a duration
  * Staying alive for a duration
  * Balls hit your paddles `n` times
  * Clearing the map of enemy structures

### Metagameplay

Two possibilities:

Roguelite Slay the Spire-like map, with passives and paddles being found in each node that increasingly make juggling more balls easier.
Examples of those can be found in the modifiers section. This is a pretty standard setup, the only way it works though if it
there are enough gameplay elements and modifiers to be played around with, especially if there are multiple types of builds
available that players can go for. That's still questionable so I don't know if this would work yet.

One Finger Death Punch-like static map, with passives and paddles being found as you explore the map.
The further out you go the bigger the challenge, with different types of nodes focusing on different gameplay elements
and on different skills the player can improve over time. This is the safer option that's less replayable but more controllable and
I should go for it in case I can't think of enough modifiers or paddles to have enough variation for a roguelite.

### Gameplay Elements

* Paddle (each paddle is a class/character)
* Paddle responsiveness
* Ball spawn rate
* Ball overflow limit
* Ball gravity
* HP

### Modifiers

* +- paddle responsiveness
* +- paddle ability cooldown
* +- ball spawn rate
* +- ball overflow limit
* +- ball gravity
* +- HP
* +- [modifier] on hit for `n` hits

Very hard to think up new passives/items for this that make sense and seem actually interesting. Perhaps thinking more about terms of
paddle's active skills and how parts of them could be used as passives might help? Either way it's not clear at all if there's enough to it
that warrants the roguelite metagameplay.

### Improvements and suggestions

* Swap paddles with mouse wheel to be able to play with one hand
* Timed abilities should give an indication of when they're going to disappear

<br>
