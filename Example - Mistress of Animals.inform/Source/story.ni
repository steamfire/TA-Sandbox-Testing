"Mistress of Animals"

Corinth is a room. Athens is east of Corinth. Epidaurus is southeast of Corinth and east of Mycenae. Mycenae is south of Corinth. Olympia is west of Mycenae. Argos is south of Mycenae. Thebes is northwest of Athens. Pylos is south of Olympia. Sparta is east of Pylos and south of Argos. Delphi is northwest of Thebes.

Artemis is a woman in Thebes.

Every turn:
	if Artemis is in a room (called the current space):
		let next space be a random room which is adjacent to the current space;
		if Artemis is visible, say "Artemis heads to [the next space].";
		move Artemis to next space;
		if Artemis is visible, say "Artemis arrives from [the current space]."

Test me with "z / z / z / z / z / z".


