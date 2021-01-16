<!--
title: Why 1-based indexing is right for Lua
date: 2021-01-16
update: 2021-01-16
-->

Programming can be looked at from the lens of borders vs. no borders.

People who like borders do so because ideas and concepts, when properly defined in their boxes, can be more easily manipulated and fit into existing processes. This diminishes the cognitive load of working in an otherwise chaotic environment.

People who dislike borders do so because they want to mix and match ideas and concepts so that something new emerges out of it. They thrive in the chaos despite the higher cognitive load environment that comes with it.

In general, languages that are dynamically typed are more borderless than bordered, and the reverse is true for statically typed ones. Lua is dynamically typed, therefore it's a more borderless language.
However, Lua is not only dynamically typed, it also has borderlessness as its core philosophy.

Lua asks of its users to mix and match its basic elements into something new continuously. From the way tables work to the way coroutines work, the authors made sure that it had
building blocks that were flexible and useful enough that they could be shaped into whatever the user needed. *That* is the fundamental spirit of the language.  It's not a batteries included
language because it wants you, the user, to figure out what you need, and to build it yourself.

What does this have to do with 1-based indexing? People who like borders like them because they decrease cognitive load. 
There's a good argument to be made that because programming convention is 0-based indexes, Lua should just follow it, which would decrease the cognitive load of working with it. This is true.
There's also a good argument to be made that Lua should be a more batteries included language because that makes it more useful generally. This is also true.

But Lua, as I just explained, is a fundamentally borderless language. It's entire way of operating constantly places the user is a very borderless and chaotic environment by design
where they constantly have to mix and match its basic building blocks to do things from scratch themselves. *"It's taxing, it's unnecessary."*, the bordered thinker would say.

People who don't like such borderless environments will not like Lua. Maybe those people should have early signals available to them that they won't like the language?
I think there's hardly a better way to do that than to break small conventions left and right, like indexing.

So it is my argument that 1-based indexing acts as a barrier against people who wouldn't enjoy Lua in the first place.
If you're the kind of person who doesn't want to deal with the very small increased cognitive load that comes with 1-based indexing,
you're likely not going to want to deal with the larger amounts of it that come with using the rest of the language. 

I obviously don't think this happened intentionally, it's just a happy coincidence. I also don't think that language designers should break (or follow) conventions mindlessly.
In this case this convention break makes sense, but it wouldn't make sense for instance to make it 2-indexed, as that obviously serves no purpose.

I also don't think there's anything wrong with people who don't enjoy borderlessness environments, dynamic typing or 1-based indexes in general. Everyone has different preferences.
But I definitely think those people shouldn't be using Lua and that the language shouldn't be catering to them, and that's a good thing.
