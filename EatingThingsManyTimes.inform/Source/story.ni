"EatingThingsManyTimes" by Dan Bowen

Example Location is a room. 
Kitchen is west of Example.

There is a pot, a chair, and a radio in the example location.

[
[Works]
Check eating something for more than the second time:
	say "bad dog";
]

There is a hot dog in the staging area. The hot dog is edible.

Check eating something for the second time:
	say "If you don't be careful you're going to break your teeth.";
	rule succeeds;
	
Check eating something for the third time:
	move the hot dog to the kitchen;
	say "ok fine.  There's food in the kitchen.";
	rule succeeds;