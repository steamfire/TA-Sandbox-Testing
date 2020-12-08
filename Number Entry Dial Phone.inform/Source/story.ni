"Number Entry" by Dan Bowen
[ONLY WORKS WITH GLULX INTERPRETER]

A telephone is a kind of thing. Understand "phone" or "telephone" as a telephone.

A phone number is a kind of value. 999-9999 specifies a phone number.

[Now we borrow some techniques from the Understanding chapter to set up dialing actions:]

Understand "dial [phone number] on [telephone]" as dialing it on. Understand "dial [phone number] on [something]" as dialing it on.

Understand the commands "phone" or "telephone" or "call" as "dial".

Understand "call [text]" or "phone [text]" or "dial [text]" or "telephone [text]" as a mistake ("That's not a number you know.").

Dialing it on is an action applying to one phone number and one thing.

Report dialing it on:
	say "You dial [the phone number understood]."

[This much is enough to let us dial telephone numbers and have Inform report that we've done so; it doesn't actually provide a telephone system such that we could reach and converse with other characters (but see the other telephone examples in the recipe book for more on how one might do that).]

The Senator's Junior Suite is a room. 

The player carries a telephone called a Nokia.

A blue paper is in the Junior Suite. The description of the blue paper is "It reads: 'Call Stephen - 555-2513'."


[Borrowing again from the chapter on Understanding, we might arrange things so that the player knows and can call a few standard numbers with such syntax as CALL HOME:]

Understand "home" as 555-9200.

[And what if we'd like to have the player learn some phone numbers during the game?]

A thing can be examined or unexamined. Carry out examining something: now the noun is examined.

Understand "Stephen" as 555-2513 when the blue paper is examined.

[This will understand CALL STEPHEN once the paper is examined; before that, the player will just get the "That's not a number you know" response that Inform uses for all attempts to call unknown names.]

[We'd better plant this paper for the player to find:]



Test me with "dial 555-9999 / call home on the telephone / phone the president / call stephen / open drawer / read paper / call stephen / put phone in drawer / close drawer / call stephen".

