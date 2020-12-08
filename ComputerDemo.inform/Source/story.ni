"Operations"

Include Computers by Emily Short.

Conference room is a room.

The conference table is a thing in the Conference Room. The old PC is a desktop computer on the conference table.

The old PC runs a multiple-choice program called PCOS. PCOS is privately-named. The options table of PCOS is the Table of GUI Options.
	The software priority of PCOS is 1.

Table of GUI Options
topic	title	effect
"mail/email"	"Mail"	open-Mail rule
"browser/internet"	"Browser"	open-browser rule

This is the open-Mail rule:
	repeat with item running through software run by the old PC:
		now the software priority of item is 5;
	now the software priority of PC email is 1;
	say "You select the mail.";
	try examining PC email.

This is the open-Browser rule:
	repeat with item running through software run by the old PC:
		now the software priority of item is 5;
	now the software priority of Goggle is 1;
	say "You select the browser.";
	try examining Goggle.

The old PC runs an email program called PC email. PC email is privately-named.

The message table of PC email is Table of PC Messages.

Table of PC Messages
topic	message	arrival time	read	answered	description
"memo"	"Memo"	9:00 AM	false	false	"Your boss would like to see you in his office right away."
"SPAM"	"SPAM"	--	false	false	"Money for you from Nigeria!"
with 10 blank rows.

At 9:10 AM:
	deliver "SPAM" to PC email.

The PC runs a search engine called Goggle. The data table of Goggle is the Table of Goggle Data.

Table of Goggle Data
topic	title	data
"food/cake/yellow" or "yellow cake"	"OnlineRecipes.org"	"A delicious recipe for yellow cake."
"yellow balloon" or "yellow/balloon"	"PartyPlanning.com"	"How to order yellow balloons online."

Software can be quittable. A software is usually not quittable. PC email and Goggle are quittable.

A first input handling rule for quittable software (called chosen software):
	let N be indexed text;
	let N be the topic understood;
	if N is "quit":
		reset to operating system;
		say "You return to the operating system.";
		try examining PCOS;
		rule succeeds.

Carry out switching off the old PC:
	reset to operating system.

To reset to operating system:
	repeat with item running through software run by the old PC:
		now the software priority of item is 5;
	now the software priority of PCOS is 1;

After examining a quittable software (called chosen software):
	say "You can also select QUIT to return to the operating system."

Test me with "turn on PC / click browser / look up food on computer / type cake / type quit / type mail on keyboard / select memo / reply to memo / type quit / click browser / turn off PC / turn on PC / click browser / reboot".

