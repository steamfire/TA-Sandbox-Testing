"RadioFrequencyEntry" by Dan Bowen

Basement is a room. 

Frequency is a number variable.

When play begins:
	now the command prompt is "What frequency do you want to use? >";
	
After reading a command when the command prompt is "What frequency do you want to use? >":
	if the player's command matches "[any number]":
		now frequency is the number understood;
		say "The frequency is now [frequency].";
		now the command prompt is ">";
	otherwise:
		say "I need a number.";
	reject the player's command.

[/ Age prompt THIS WORKS]

	
