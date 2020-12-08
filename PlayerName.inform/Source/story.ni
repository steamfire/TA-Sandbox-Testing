

 "Identity Theft"

The player's forename is a text that varies. The player's full name is a text that varies.

When play begins:
	now the command prompt is "What is your name? > ".

To decide whether collecting names:
	if the command prompt is "What is your name? > ", yes;
	no.
	
After reading a command when collecting names:
	now the player's full name is the substituted form of "[the player's command in title case]";
	now the player's forename is word number 1 in the player's full name;
	now the command prompt is ">";
	say "Hi, [player's forename]![paragraph break]";
	say "[banner text]";
	move the player to the location;
	reject the player's command.

[We also want to postpone the proper beginning of the game until we've gotten the name:]

Instead of looking when collecting names: do nothing.

Rule for printing the banner text when collecting names: do nothing.

Rule for constructing the status line when collecting names: do nothing.

Your Bedroom is a room. The printed name of Your Bedroom is "[player's forename]'s Bedroom".

