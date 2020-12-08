"Blindness" by Dan Bowen

Include Exit Lister by Gavin Lambert.

[example command to go blind - DROP STARCH]

Testing room is a room. "A relatively barebones room. Not much aside from the painting on the wall and the table in the corner."  Next room is north of testing. 


[Body parts are a kind of thing. eyes are body parts.  The player carries eyes. Understand "my eyes" as eyes.]

Eyes are a kind of thing.  Eyes are a part of every person.

A person can be blind or sighted. A person is usually sighted. [The player is blind.]
The player carries a can of starch.

after dropping the can of starch:
	say "A glistening mist whooshes into your face.";
	Now the player is blind;
	Now the location is dark;
	Starch wears off you in three turns from now;
	try looking;

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

The painting is in the testing room. The painting is fixed in place. Description of the painting is "A beautiful portrait of a very fancy-looking dog.".

The table is scenery. The table is a supporter. The table is in the testing room. The crystal vase is on the table.
