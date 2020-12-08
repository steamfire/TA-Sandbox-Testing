"Starch" by Dan Bowen

The release number is 3.

The foyer is a room. a room can be slippery.  A room has a number called slips. The slips of a room is usually 0. 

The hall is west of the foyer.
The dining room is south of the foyer.
The livingroom is east of the foyer.
The kitchen is east of the dining room.

Hard floored rooms is a region.  The kitchen and foyer are in hard floored rooms.  
Rug floored rooms is a region.  The hall, living room, and dining room are in rug floored rooms.

 A hard floor is a backdrop in the hard floored rooms.
a rug floor is a backdrop in the rug floored rooms.

A can of starch is a thing.

When play begins:
	Now The player is carrying a can of starch;
	
Understand "spray [something preferably held] on/at [something]" as spraying it on.
Understand the command "use" as "spray";

	
Spraying it on is an action applying to two things.

Does the player mean spraying the can of starch on the can of starch: it is very unlikely.
Check spraying it on:
	if the noun is the starch:
		[prevent it from spraying itself]
		if the second noun is the starch, say "You'd need some complicated tubing to do that." instead;
	otherwise:
		[prevent anything but starch from spraying]
		say "[The noun] would probably have to go to college for that sort of thing." instead;
					

Understand "spray [something] with [something]" as spraying it with.

Spraying it with is an action applying to two things. Carry out spraying it with: try spraying the second noun on the noun instead.

Carry out spraying it on:
	if the second noun is a floor:
		now the location of the second noun is slippery;
		Now the slips of the location of the second noun is 3;
[	if the second noun is the player:
		Now the location is dark;]
		
Report spraying it on:
	if the second noun is a floor:
		say "A light, fresh spray of mist settles on [the second noun][if the location is in the rug floored rooms]. It becomes nicely stiff and crunchy under your feet[otherwise]. You notice a glossy sheen on it[end if].";
	if the second noun is the player, say "There you go, all stiff and presentable."; [, and your eyes are glued shut.]

	
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

	
	
	