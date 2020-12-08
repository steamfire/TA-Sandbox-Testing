"TwoDevicesOnOff" by Dan Bowen

Include ComputersTeletype by Dan Bowen.

		
Electronics Room is a room. 

TeletypeStatic is initially true.
screenDescriptor is initially "".
visibleDescriptor is initially "".




The Teletype is computer in the Electronics room.  The teletype is switched off.  There is a UHF radio in the Electronics room.  The UHF radio is a device.   The description of the keyboard is "An array of rods sticking out of the lower front of the boxy teletype.  The end of each rod is bent upward, and sports a round, cylindrical, black cap, each marked with a letter or number, like the keys of an old fashioned typewriter".

The out-of-bounds response of an enumerated multiple-choice program is "[The teletype] dings it's little bell![line break] [fixed letter spacing]THAT IS NOT ONE OF THE AVAILBLE CHOICES.[variable letter spacing][line break] (Try, for instance, TYPE 1)".

Understand "tty" as teletype.  Understand "paper" or "slot" as screen.
Understand "keys" as keyboard.

the roll of paper tape is a data storage device. the player holds the tape.

Does the player mean examining the paper tape roll: it is unlikely.

Every turn when the player is in the Electronics room:
	if (teletypeStatic is true) and (the teletype is switched on):
		repeat with item running through software run by the teletype:
			now the teletype is not running item;
		now the teletype runs static;


Carry out examining the Teletype:
	say "A big green metal box, with a continuous sheet of 8' wide paper sticking out of a slot on the top of the machine.";


[This is necessary because for some reason the descripton of the paper (screen), while the teletype is off, says 'screen' despite it replacing it properly with paper everywhere else.]
instead of examining screen when teletype is switched off:
	say "The paper is blank.";

After switching off the UHF radio:
	now TeletypeStatic is true.

After switching on the UHF radio:
	now TeletypeStatic is false;
	now the teletype runs HAL-Bootloader;
	
After switching on the Teletype:
	Now screenDescriptor is "paper";
	Now the visibleDescriptor is "printed";
	if teletypeStatic is false:
		now the teletype runs HAL-Bootloader;


Chapter 1 - Programs TTY


Static is privately-named software. The description of static is "[one of]
LIZKSFLI ZKGGZ
              ?#
                #(&!  ..
                        -#;LZSAS
[or]FDAIGYYDO/'*(:#?2519&$.879 !#:',#;

[or]GWO BUZGFD PO SFLKH
[or],,
.......................

[or]   !(*$204&5,#$14237':096153

[or]XW..............2222222222[at random]";



The teletype HAL-Bootloader program is an enumerated multiple-choice program. The options table of the Teletype HAL-Bootloader program is the Table of Bootloader Options.
	
Table of Bootloader Options
index	title	effect
--	"RUN DIAGNOSTICS"	check-system rule
--	"REBOOT PROCESSOR"	reboot-cpu rule

This is the check-system rule:
	say "DIAGNOSTICS INFO HERE.";
	try examining a random screen that is part of the teletype;
		
This is the reboot-cpu rule:
	say "[fixed letter spacing][paragraph break]***THE SYSTEM IS GOING DOWN FOR REBOOT NOW!***[variable letter spacing]";
	try examining a random screen that is part of the teletype;



test me with "x tty / turn tty on / x tty / turn tty off / x tty / turn UHF on / x tty / turn tty on / x tty "


