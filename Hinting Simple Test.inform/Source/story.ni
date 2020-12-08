"Hinting Simple Test" by Dan Bowen




[Overall setup for hinting]
Hinting is an action out of world applying to nothing. Understand "hint" and "help" as hinting.

A room has a text called localhint. The localhint of a room is usually "There are no hints available in this location."

Report hinting:
say "[localhint of the location]".


[Hinting implemented in rooms]
Suspicious Room is a room. The localhint of Suspicious Room is "This room is very suspicious..."

A hint book is in the suspicious room.

[This is an example of how to pre-empt hinting instead of giving it to the player.  the hint book is an arbitrary object. the important thing is Check Hinting.]
Check hinting:
	if the player does not carry the hint book:
		say "No hints for you!" instead.

The clock room is south of Suspicious room. The localhint is "Perhaps you should check out that diabolical machine."

a diabolical machine is a device in the Clock Room.

Check hinting when the location is Clock Room:
	if Diabolical Machine is switched on:
		say "Machine's on. Now you've done it." instead.