"Test Game for Exit Lister" by Gavin Lambert.
After printing the banner text: say "Based on the test game by Andre Kosmos."

Include Exit Lister by Gavin Lambert.

Hallway is a room. "This hallway is decorated with the simplest wallpaper you have ever seen. There are no pictures, or plates with wise words, nor tiles with proverbs hanging on any of the walls. The only thing you notice is that all the doors are painted in different colors."

The pink door is east of hallway and west of Bathroom. It is a door and scenery.
The description of the bathroom is "Everything in here is pink. The tiles on the walls, the toilet bowl, the bathtub, the floor, and even the ceiling. The only thing not pink is a large mirror on the wall, but since all it reflects is pink that hardly matters.".
A large mirror is scenery in bathroom. Instead of examining mirror, say "Don't be vain, you look fine.". Rule for listing exits when the location is Bathroom: say "All this pink numbs your brain, and you can't remember how you got here."

The brown door is west of hallway and east of the Living Room. It is a door and scenery. The closed text of the brown door is "(barred)".
The description of the living room is "You are in a well decorated room here, there are numerous pictures on the walls, some comfy looking chairs, and a big television set."
Before opening the brown door for the first time, say "Despite the bars, the door opens surprisingly easily."

The green door is south of hallway and north of Garden. It is a door and scenery.
The description of garden is "A large garden with very short cut grass, and various flowerbeds. The main thing you notice is a large oak tree. From between the leaves of the trees you see a rope ladder hanging down to the ground. The ladder is dug into the ground to keep it from swinging too much when you climb it."

The rope ladder is up from garden and down from the Tree house. It is a open unopenable door and scenery.
The passing text of rope ladder is "climbing".
Instead of climbing the rope ladder in tree house, try going down.
Instead of climbing the rope ladder in garden, try going up.

The description of the tree house is "A rather untraditional tree house, the walls are decorated with a rather ugly wallpaper with pink and purple flowers, and a thick red carpet covers the floor."

A wooden bridge is east of garden and west of the Main Street. It is an open unopenable door and scenery. The passing text of the wooden bridge is "over".

The description of the main street is "This is the main street, from here you could go to town to see a movie, visit a pub, or something. If only the author of this game wasn't too lazy to write those pleasant locations in. Ah well... maybe next version."

West End of Tunnel is down from the garden. "The western end of a small tunnel running under the river." It is dark.
East End of Tunnel is down from Main Street. "The eastern end of a small tunnel running under the river." It is dark.
East of West End of Tunnel is East End of Tunnel.

A light stick is in Main Street. "A feebly-glowing light stick lies discarded nearby." It is lit.

When play begins:
	say "Do you want a list of possible exits at the end of the room description?";
	if player consents, try turning exits on;
	otherwise try turning exits off;
	say "[paragraph break]You can always turn the exit list on or off with the commands EXITS ON and EXITS OFF. You can also always ask for an exit list with the command EXITS.[paragraph break]Do you want the exit lister to mention locations you have already visited?";
	if player consents, mention visited rooms;
	otherwise don't mention visited rooms;
	say "[paragraph break]Sometimes the exit list can tell you that you can go north, but when you try to the game tells you that You can't, since some door is in the way. [paragraph break]Do you want to mention those doors in the exit list?";
	if player consents, mention doors;
	otherwise don't mention doors;
	say "[paragraph break]Do you want the exit lister to still mention visited rooms even in darkness?";
	if player consents, mention visited rooms in darkness;
	otherwise don't mention visited rooms in darkness;
	say "[paragraph break]".

test me with "open green door / s / e / w / u / d / d / e / u / get stick / d / w"

