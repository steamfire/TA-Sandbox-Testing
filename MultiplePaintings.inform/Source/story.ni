
"Western Art History 305"

A button is a kind of thing. A button is usually fixed in place. Understand "button" as a button. Understand "buttons" as the plural of button.

The button-collective is a thing. The printed name of the button-collective is "buttons". The description of the button-collective is "There's [a list of visible buttons]."

[We could if we wanted tweak the description to be different in style in different rooms of the gallery, but this will do for now. Next we need to make it possible to type something like EXAMINE buttonS, which normally wouldn't work because the Standard Rules don't tell Inform to recognise multiple objects with the EXAMINE command (unlike, say, DROP or TAKE). This is easy:]

Understand "examine [things]" as examining.

[Now to make use of the special object. If the player types EXAMINE buttonS, the multiple object list will become a list of the visible buttons. The following rule looks at this list: if it contains more than one button, it replaces them with the button-collective instead. Now there's only one examining action, so we get a reply like "There's an abstract button, a pointilist button and a French academic button." instead of a list of descriptions of each in turn.]

A multiple action processing rule when the current action is examining (this is the examine kinds rule):
	let L be the multiple object list;
	let F be L;
	let the button count be 0;
	repeat with item running through L:
		if the item is a button:
			increment the button count;
			remove the item from F;
	if the button count is greater than one:
		add the button-collective to F;
		alter the multiple object list to F.

[And now some art to try this out on:]

Gallery is a room. "This is the Gallery"

There is an answering machine in the gallery.  

The abstract button, the pointilist button, and the French academic button are parts of the answering machine.

North of the Gallery is the Side Chamber. A handsome miniature is a button in the Side Chamber. The description of the handsome miniature is "The miniature depicts a uniformed soldier of the late 18th century, with braid on his shoulders and a curl in his beard."

The player carries a small notebook. The description of the notebook is "It contains the notes you've taken so far towards a paper for Western Art History 305. So far you're still feeling a bit uninspired."

Test me with "x buttons / x all / n / x buttons / x all".

