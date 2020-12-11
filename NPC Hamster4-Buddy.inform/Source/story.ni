"NPC Hamster4-Buddy"  by Dan Bowen.

The story headline is "Version 4 - A small rodent friend simulator"

[Release along with cover art ("A Hamster pooping in a cage.").
][IN MOTHER RUSSIA, HAMSTER FOLLOW YOU!]

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
A hamster is an animal inside the cage. 


The can take hamsters rule is listed instead of the can't take other people rule in the check taking rules.
Check an actor taking a hamster (this is the can take hamsters rule):
	if the noun is a person and the noun is not a hamster:
		say "I don't suppose [noun] would care for that.";
		stop the action;
	If the noun is a hamster:
		The hamster squirms from your hands in five turns from now;
		
At the time when Hamster squirms from your hands:
	if the hamster is carried by the player:
		say "The hamster squirms out of your hands!";
		Move the hamster to the location of the player;

Every turn when (the turn count is even):
	if (the hamster is in the cage) and (the cage is open):
		say "The hamster scampers out of the cage, and cavorts about your feet[one of].  A new friend![or].[stopping]";
		move the hamster to the location of the player;
	If (the player is NOT holding the hamster) and (the hamster is NOT in the cage) and (the location of the hamster is not the location of the player):
		let the way be the best route from the location of the hamster to the location of the player;
		try hamster going the way;

		
Test me with "get cage / open cage / follow hamster / get hamster / z / z / z / z / z / get hamster / put hamster in cage / close cage / z / z / z / z  / z / z / z ".

