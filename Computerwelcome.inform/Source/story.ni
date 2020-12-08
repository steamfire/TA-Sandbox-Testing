"Computerwelcome" by Dan Bowen

Include Basic Screen Effects by Emily Short.
Include Computers by Emily Short.


Ham shack is a room.

halNotice is initially "";

The Teletype is computer in the ham shack.  The teletype is switched on.   The teletype runs the STARSHIP-OS-REMOTE program.  The description is "A teletype green."



Carry out examining the teletype:
	say "[fixed letter spacing]   _____ __                  __    _     [line break]";
	say "  / ___// /_____ ___________/ /_  (_)___ [line break]";
	say "  \__ \/ __/ __ `/ ___/ ___/ __ \/ / __ \[line break]";
	say " ___/ / /_/ /_/ / /  (__  ) / / / / /_/ /[line break]";
	say "/____/\__/\__,_/_/  /____/_/ /_/_/ .___/ [line break]";
	say "                                /_/      [line break][variable letter spacing]";
	rule succeeds.


The STARSHIP-OS-REMOTE program is an enumerated multiple-choice program. The options table of the STARSHIP-OS-REMOTE program is the Table of Starships. 


Table of Starships
index	title	effect
--	"SHIP STATUS"	Starship-remote-status rule
--	"NAVIGATION"	Starship-remote-nav rule
--	"AUTOPILOT"	Starship-remote-ap rule
--	"LOG OUT"	Starship-remote-logout rule

This is the Starship-remote-status rule:
	say "starship status here"
	
This is the Starship-remote-nav rule:
	Say "starship nav here"
	
This is the Starship-remote-ap rule:
	Say "starship autopilot here"
	
This is the Starship-remote-logout rule:
	say "LOGGING OUT OF STARSHIP...";	
