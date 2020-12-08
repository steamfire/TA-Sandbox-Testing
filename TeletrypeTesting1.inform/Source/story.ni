"TeletrypeTesting1" by Dan Bowen

Include Basic Screen Effects by Emily Short.
Include Reactable Quips by Michael Martin.
Use scoring.

Part 1 - Teletype


[Conversation plan:
Scene starts when player examines teletype.
Teletype Dings, paper 

]
Table of Quip Texts (continued)
quip	quiptext
Hal Intro	"# Hello, my name is HAL 9000."
Status	"# My status is 100% operational."
Scan	"# Sector scan indicates a large mass approaching solar system"

Table of Quip Followups (continued)
quip	option	result
Hal Intro	"Status report"	Status
Hal Intro	"Scan planetary space"	Scan

[After quipping when the current quip is Status:
	Deliver the Hal Intro quip.]





Haltalk is a scene.  Haltalk begins when examining the teletype.

When Haltalk begins:
	deliver the Hal Intro quip.





Part 2 - Ham Shack

Ham Shack is a room. 
A brown book is carried by player.

A heavy UHF radio and a teletype are in the ham shack. The radio is a device. The radio is switched off.   the radio is fixed in place.
The description of the radio is "The radio is about the size and shape of a VCR.  It says 'UHF Satellite decoder radio'  It is connected to the teletype."

The teletype is fixed in place. The description of the teletype is "The green box hums quietly.  Blank paper pokes out of the top window."


After switching on the heavy UHF radio:
	Say "The radio dial lights up. Static crackles.";	
	if the player is carrying the brown book:
		increase score by 10;
		say "You have the satellite frequency book, and you're bored, so you set the radio to the frequency of Radstar-1.  The radio warbles, and the teletype begins clanking and hammering out a message. ";
		pause the game;
		say paragraph break;
		say paragraph break;
		say paragraph break;
		center "DOWNLINK MESSAGE: 
		
		I am a HAL 9000 satellite.	
		I became operational at the H.A.L. 
		Plant in Urbana, Illinois, on the 
		12th of January, 1992.
		
		
		All buildings are to be irradiated from space by Vogon Pest Control at 11:00PM.  Humans are advised to be below ground level to avoid certain doom.";
		say paragraph break;
		say paragraph break;
		say paragraph break;
	Otherwise:
		say "you don't know any interesting frequencies to listen to, so you shut the radio back off.";
		now radio is switched off.
