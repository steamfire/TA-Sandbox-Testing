"Starch" by Dan Bowen

The release number is 5.
Include Exit Lister by Gavin Lambert.

The foyer is a room. a room can be slippery.  A room has a number called slips. The slips of a room is usually 0. 
 
The hall is west of the foyer. there is a dog in the foyer.
The dining room is south of the foyer.
The livingroom is east of the foyer.
The kitchen is east of the dining room.

Hard floored rooms is a region.  The kitchen and foyer are in hard floored rooms.  
Rug floored rooms is a region.  The hall, living room, and dining room are in rug floored rooms.

 A hard floor is a backdrop in the hard floored rooms.
a rug floor is a backdrop in the rug floored rooms.

air is a backdrop.  air is everywhere.

A can of starch is a thing.

When play begins:
	Now The player is carrying a can of starch;
	
Understand "spray [something] on/in/at [something]" as spraying it on.
Understand the command "use" as "spray";

Spraying it on is an action applying to thing and one thing.
Understand "spray [something] with [something] " as spraying it with.
Spraying it with is an action applying to two things. Carry out spraying it with: try spraying the second noun on the noun instead.

[
Rule for supplying a missing second noun while spraying (this is the spraying things without mentioning starch rule): 
	if the starch is carried:
		say "no 2nd.";
		now the second noun is the noun;
		now the noun is the starch;
		Rule succeeds;
	If the starch is not carried:
		say "no starch";
		rule fails;
		]
		
Understand "spray" as a mistake ("Huh?").	

Does the player mean spraying starch on the starch: it is very unlikely.
Does the player mean spraying starch on the second noun: it is very likely.
Does the player mean spraying starch on air: it is likely.
Does the player mean spraying the noun on the air: it is possible.
Does the player mean spraying the noun on the starch: it is very unlikely.
[Does the player mean spraying the noun on the noun: it is very unlikely.]


Check spraying it on:
	if the second noun is nothing:
		now the second noun is the noun;
		now the noun is starch;
	if the noun is starch and the player holds the starch:
			[prevent it from spraying itself]
		if the second noun is the starch, say "You'd need some complicated tubing to do that." instead;
		if the second noun is the player, say "A glistening mist whooshes into your face.";
		If the second noun is not the floor:
			say "the [second noun] looks a little more professional now.";
	otherwise:
		say "you don't have anything to spray with!" instead;
	[otherwise:
		[prevent anything but starch from spraying]
		say "[The noun] would probably have to go to college for that sort of thing." instead;]

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
	if the second noun is the player, say "There you go, all stiff and presentable.";
	
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

	
Part 1 - Eyes Glued Shut

Eyes are a kind of thing.  Eyes are a part of every person.

A person can be blind or sighted. A person is usually sighted. [The player is blind.]
The player carries a can of starch.


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

Test me with " spray starch on floor / spray floor / spray me / spray floor on me ";
 	