"Starch" by Dan Bowen

The release number is 7.
The story headline is "Commit 9958aff - MIT License, Copyright 2020".
The story description is "A can of spray starch with various consequences."
Include Exit Lister by Gavin Lambert.

[Lots of flourishes added for beta testers]

Part 1 - Starch World

When play begins:
	say "Get the can of starch and experiment with spraying. For spoilers of all the things you can do, type AMUSING.";

The Foyer is a room. "A room with a hard floor.".  a room can be slippery.  A room has a number called slips. The slips of a room is usually 0. 

The dog is a female person.
 
The Hall is west of the foyer.  "A long hallway with a rug.". There is a dog in the hall.
The Dining Room is south of the foyer. "A green room with a rug.".  There is a table in the dining room.  The table is supporter that is fixed in place.
The Living Room is east of the foyer. "A tastefully appointed room with a rug.".  The couch is an enterable supporter.  The couch is in the living room.  The couch is fixed in place.
The Kitchen is east of the dining room. "A room with a hard floor.".   There is a clock in the kitchen.  The description of the clock is "[the time of day]".

Hard floored rooms is a region.  The kitchen and foyer are in hard floored rooms. 
Rug floored rooms is a region.  The hall, living room, and dining room are in rug floored rooms.

 A hard floor is a backdrop in the hard floored rooms.
a rug floor is a backdrop in the rug floored rooms.

The air is a backdrop.  the air is everywhere.

A spray can of starch is a thing. The description of the starch is "A small spray can of sizing.  Generally used for ironing things.  Use inconsistent with labelling is probably to be expected." There is a starch is in the foyer.

Rule for reaching inside a room: 
	say "You don't have [the second noun]";
[    say "There's nothing here to do that with."; ]
    deny access.
	
Understand "spray [something] on/in/at [something]" as spraying it on.

Spraying it on is an action applying to thing and one thing.
Understand "spray [something] with [something] " as spraying it with.
Understand "use [something]" as a mistake ("(try SPRAY)").
Spraying it with is an action applying to two things. Carry out spraying it with: try spraying the second noun on the noun instead.

short spraying is an action applying to one thing.
Understand "spray [something]" as short spraying.

Check short spraying:
	if the noun is nothing:
		try spraying the air with starch;
	if the noun is the can:  [This takes care of just saying SPRAY CAN]
		try spraying the air with the starch;
	otherwise:
		try spraying the noun with the starch;

Does the player mean short spraying the air: it is very likely;
Does the player mean spraying starch on the starch: it is very unlikely.
Does the player mean spraying starch on the second noun: it is possible.
Does the player mean spraying starch on the air: it is likely.
Does the player mean spraying the noun on the air: it is possible.
Does the player mean spraying the noun on the starch: it is very unlikely.


Check spraying it on:
	if the second noun is nothing:
		now the second noun is the noun;
		now the noun is starch;
	if the noun is starch and the player holds the starch:
		if the second noun is the starch:  [Prevent it from spraying itself]
			say "You'd need some complicated tubing to make it spray itself." instead;
		else if the second noun is the player:
			say "A glistening mist whooshes into your face.";
		else if the second noun is the dog:
			say "[one of]The dog looks askance at you, and wanders off.[or]'Grrrr...' mutters the dog as it trots away.[stopping]";
			Now the dog is in a random adjacent room;
		else If the second noun is not the floor:
			if the second noun is the air:
				say "psssssst....  the mist of starch billows.";
			Otherwise:
			 	say "the [second noun] looks a little more professional.";
	otherwise:
		say "you don't have anything to spray with!" instead;


Instead of spraying the starch on the dog for the third time:
	say "the dog nips that can from your hands and sprays you with it!";
	try spraying the player with starch;
	Now the starch can is in the location;

instead of spraying the starch on the dog for the fourth time:
	say "The dog tells your mother, and now you're in trouble.";
	End the story;

Carry out spraying it on:
	if the second noun is a floor:
		now the location of the second noun is slippery;
		Now the slips of the location of the second noun is 3;
	if the second noun is the player:
		Now the player is blind;
		Now the location is dark;
		Starch wears off you in seven turns from now;
		try looking;
		
Report spraying it on:
	if the second noun is a floor:
		say "A light, fresh spray of mist settles on [the second noun][if the location is in the rug floored rooms]. It becomes nicely stiff and crunchy under your feet[otherwise]. You notice a glossy sheen on it[end if].";
	if the second noun is the player, say "There you go, stiff and presentable.";
	
Before going from a room that is slippery:
	say "You slide across the slippery [location] floor, unable to control where you end up!";
	Move the player to a random adjacent room;
	rule fails;

After going to a room that is slippery:	
	if slips of the location is less than 1:
		say "It looks like the starch has worn off the floor, phew.";
		Now the	 location is not slippery;
		try looking;
		rule succeeds;
	otherwise:	
		say 	"You slide through the slippery [location] unable to stop!";
		Decrease the slips of the location by 1;		
		Move the player to a random adjacent room;
		rule fails;

Understand "pet [a person]" as touching.
Instead of touching the dog:
	say "The dog now approves of your choices in life.";
	
Part 2 - Eyes Glued Shut

Eyes are a kind of thing.  Eyes are a part of every person.

A person can be blind or sighted. A person is usually sighted. [The player is blind.]

At the time when starch wears off you:
	say "Ick, your welling tears have finally melted that starch out of your eyes.";
	now the player is sighted;
	now the location is not dark;
	try looking;

Rule for listing nondescript items when the player is blind: 
	say "".
Rule for listing exits when the player is blind: do nothing instead.
To print the location’s description:
	if the player is blind, say "Everything is dark. Your eyes are glued shut.[line break]";
	otherwise say “[description of the location of the player][line break]”.
For printing a locale paragraph about a supporter:
	if the player is blind, say "";
 	otherwise continue the activity.
 
Instead of doing something to eyes when the player is blind:
	say "They are glued shut. That starch is good stuff.";
	rule fails;
	
Instead of doing something to eyes when the player is sighted:
	say "Your eyes are fine the way they are.";
	
Before going from anywhere when the player is blind:
	now the location is not dark;
	
after going somewhere when the player is blind:
	now the location is dark;

Test me with " get can / spray starch / on floor / spray me / spray floor on me ";


Part 3 - Hints

Understand "help" or "hint" or "hints" or "instructions" or "info" or "about" as asking for help. Asking for help is an action out of world. 

Carry out asking for help: say "The following commands are understood, in addition to the standard ones:  SPRAY  PET."
 	

Understand "amusing" as asking for fun stuff.  Asking for fun stuff is an action out of world.

Carry out asking for fun stuff: 
	say "[bold type]Have you tried-[paragraph break][roman type]
Spraying the different kinds of floors?[line break]
going somewhere after spraying the hard floor?[line break]
Spraying the dog?[line break]
Spraying the dog multiple times?[line break]
Spraying yourself?[line break]
Spraying?[line break]
Spraying the starch with the starch?[line break]
Opening your eyes?[line break]
Petting the dog?";

