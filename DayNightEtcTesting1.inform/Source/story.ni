"DayNightEtcTesting1" by Dan Bowen

Include Exit Lister by Gavin Lambert.
include Phrases for Adaptive Pacing by Ron Newcomb.


When play begins:	
[Now the right hand status line is "Score: [score] in [turn count] turns";]
Now the left hand status line is "[the player's surroundings] / Score: [score]";
Now the right hand status line is "Time: [time of day]";

Day is a recurring scene.
Day begins when play begins.
The time of day is 10:00 AM.

The outdoors is a region.  The Garden is in the outdoors.

The sky is a backdrop. the sky is in the outdoors. instead of doing something to the sky, say "[if Night is happening]There is a bright satellite passing overhead.[otherwise]The sky is pretty blue."

Night is a recurring scene.  Night begins when Day ends. Night ends when the time of day is 7:30 am.

When Night begins: say "Now the moon is up."; now the description of the sky is "There is a satellite crawling across the sky...";

Day begins when Night ends. Day ends when the time of day is 07:55 PM. 
When Day begins: say "The sun is now properly up." 


Mednir's House is a room. " [if Night is happening]Satellites are heard outside.[otherwise]You hear no satellites[end if]." 

The Garden is a room. It is east of Mednir's House. "[if Night is happening]There is a moving point of light in the sky above.[otherwise]The garden is green."


Part 1 - Waiting


Hanging around until is an action applying to one time.

Check hanging around until:
	if the time of day is the time understood, say "It is [time understood] now!" instead;
	if the time of day is after the time understood, say "It is too late for that now." instead.

Carry out hanging around until:
	while the time of day is before the time understood:
		follow the turn sequence rules.

Report hanging around until:
	say "You yawn until [time understood]."

Understand "wait until [time]" as hanging around until.
