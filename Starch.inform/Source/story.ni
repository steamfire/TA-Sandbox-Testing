"Starch" by Dan Bowen

The release number is 2.

The foyer is a room. a room can be slippery.  A room has a number called slips. The slips of a room is usually 0.  A floor is scenery in the foyer.

The hall is west of the foyer.
The dining room is south of the foyer.
The livingroom is east of the foyer.
The kitchen is east of the dining room.

A can of starch is a thing.

When play begins:
	Now The player is carrying a can of starch;
	
Understand "spray [something] on/at [something]" as spraying it on.
	
spraying it on is an action applying to two things.

Check spraying it on:
	[prevent anything but starch from spraying]
	if the noun is not the starch, say "[the noun] doesn't go for that sort of thing." instead;
	[prevent it from spraying itself]
	if the noun is the second noun, say "You'd need some complicated tubing to do that." instead;

Carry out spraying it on:
	if the second noun is a floor:
		now the location of the second noun is slippery;
		Now the slips of the location of the second noun is 3;
		
Report spraying it on:
	say "you mist [the second noun] with the light, fresh spray.";
	Now the description of the floor is "it is slippery.";

	
Before going from a room that is slippery:
	say "You slide through the slippery [location] unable to control where you end up.";
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

	
	
	