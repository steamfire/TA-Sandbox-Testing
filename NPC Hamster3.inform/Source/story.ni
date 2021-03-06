"NPC Hamster3"  by Dan Bowen.

The story headline is "Version 3 - A small rodent test simulator"

[Release along with cover art ("A Hamster pooping in a cage.").
][Trimmed down hamster code]

Include (- Switches z; -) after "ICL Commands" in "Output.i6t".
Include Exit lister by Gavin Lambert.

[The hamster does things on every even turn.  It will escape fromt he cage if the door is open.  It will run to adjacent rooms.  It will squirm from your inventory after X moves.  It poops before leaving a room.]

Book 1 - Hamster Standalone Setup

NoHo is a room. There is a cage in NoHo.
East Village is east of NoHo. 
Lower East Side is southeast of NoHo and east of Little Italy. 
Little Italy is south of NoHo. SoHO is west of Little Italy. 
Chinatown is south of Little Italy. 
Gramercy park is northwest of East Village. 
Tribeca is south of SoHO. 
Civic Center is east of Tribeca and south of Chinatown. 
Midtown is northwest of Gramercy park.


Book 2 - Hamster World

Chapter 1 - Hamster

A cage is an openable container.  The cage is transparent and closed. 
Understand "cage door" as the cage.
A hamster is an animal inside the cage.  A hamster can be just escaped or not just escaped.

A animal has a room called last location.

Understand "follow [any animal]" as following. Understand the commands "chase" and "pursue" as "follow".
Following is an action applying to one visible thing.

The can take hamsters rule is listed instead of the can't take other people rule in the check taking rules.
Check an actor taking (this is the can take hamsters rule):
	if the noun is a person and the noun is not a hamster:
		say "I don't suppose [noun] would care for that.";
		stop the action;
	If the noun is a hamster:
		The hamster squirms from your hands in five turns from now;
		
At the time when Hamster squirms from your hands:
	if the hamster is carried by the player:
		say "The hamster squirms out of your hands!";
		Move the hamster to the location of the player;

Check following:
	if the noun is the player, say "Wherever you go, there you are." instead;
	if the noun is visible, say "[The noun] is right here." instead;
	[if the last location of the noun is not the location, say "It's not clear where [the noun] has gone." instead.]

[Here again the best route comes in handy:]
Carry out following:
	let the destination be the location of the noun;
	if the destination is not a room, say "[The noun] isn't anywhere you can follow." instead;
	let aim be the best route from the location to the destination;
	say "(heading [aim])[line break]";
	try going aim.

Every turn when (the turn count is even):
	if (the hamster is in the cage) and (the cage is open):
		say "The hamster scampers out of the cage, and [run paragraph on]";
		move the hamster to the location of the player;
		now the hamster is just escaped;
	If (the player is NOT holding the hamster) and (the hamster is NOT in the cage):
		let the path be the best route from the location of hamster to a random room adjacent to the location of hamster;
		if the path is a direction, try hamster going the path.

		
Test me with "get cage / open cage / follow hamster / get hamster / z / z / z / z / z / get hamster / put hamster in cage / close cage / z / z / z / z  / z / z / z ".

