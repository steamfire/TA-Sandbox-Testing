"Passwords" by Dan Bowen

Test Room is a room.

Next Room is north of test room.

After going from the Test Room:
	now the command prompt is ">";
	

satPassword is initially "letmein".

When play begins:
	now the command prompt is "What is the password? (or type ABORT) >";
	
After reading a command when the command prompt is "What is the password? (or type ABORT) >":
	if the player's command matches the text "abort":
		now the command prompt is ">";
	otherwise if the player's command matches the text "[satPassword]":
		say "Welcome.";
		now the command prompt is ">";
	otherwise:
		say "incorrect password.";
	reject the player's command.