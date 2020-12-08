"Balance Checking"

Include Computers by Emily Short.

The Bank Forecourt is a room. The High Street is north of Bank Forecourt.

The ATM is a computer in the Bank Forecourt. The ATM is switched on. The ATM runs welcome screen. The description is "The ATM is the sort with a small, roughly square screen; a keypad for numeric input; and a slot in which to insert a debit card."

Carry out examining the ATM:
	say "[description of the ATM][paragraph break]";
	rule succeeds.

Instead of switching off the ATM:
	say "Resetting the ATM is only possible for bank employees."

The player carries a wallet. The wallet contains a debit card. The debit card is a data storage device. The description of the debit card is "It is a red card stamped with numbers and embossed with a hologram of a flying eagle. With a sharp needle, you scratched the PIN 2953 into the upper left corner. You're always forgetting it."

The slot is an extension port. It is part of the ATM.

Does the player mean inserting the debit card into the slot: it is very likely.

The welcome screen is privately-named software. The description of the welcome screen is "WELCOME, reads the screen. PLEASE INSERT CARD TO PROCEED."

An input handling rule for the welcome screen:
	say "INSERT CARD TO PROCEED, insists the screen.";
	rule fails.

Carry out inserting the debit card into the slot:
	now the ATM does not run welcome screen;
	now the ATM runs HALsecure;
	now the ATM runs ATM operation program.

Report inserting the debit card into the slot:
	say "You slide your card into the slot.";
	let target screen be a random screen that is part of the ATM;
	try examining the target screen instead.

Instead of taking the debit card when the debit card is in the slot:
	say "You reclaim your card.";
	now the player carries the debit card;
	clear the ATM screen;
	rule succeeds.

Understand "insert [something]" as inserting it into.

Rule for supplying a missing second noun when inserting something into:
	if the slot is visible:
		now the second noun is the slot;
	otherwise:
		say "There is no obvious place to insert [the noun]." instead.

HALsecure is a privately-named password-lock program. The password of HALsecure is "nomad". The description is "The screen now reads, PLEASE INPUT YOUR PASSWORD." The rejection of HALsecure is "PASSCODE ERROR. TRY AGAIN."

The ATM operation program is an enumerated multiple-choice program. The options table of the ATM operation program is the Table of Transactions.

Table of Transactions
index	title	effect
--	"CHECK BALANCE"	balance-check rule
--	"QUICK CASH"	quick-cash rule
--	"BUY STAMPS"	stamp-purchase rule
--	"END TRANSACTION"	cancellation rule

Price is a kind of value. $99.99 specifies a price.

Checking account balance is a price that varies. Checking account balance is $2894.82.
Cash in hand is a price that varies. Cash in hand is $15.97.

After taking inventory:
	say "You are carrying [cash in hand] in cash."

This is the balance-check rule:
	say "Your balance is [checking account balance]."

This is the quick-cash rule:
	if checking account balance is less than $20.00:
		say "Insufficient funds!" instead;
	decrease checking account balance by $20.00;
	increase cash in hand by $20.00;
	say "The machine spits out a $20 bill.";

This is the stamp-purchase rule:
	say "The machine is temporarily out of stamps."

This is the cancellation rule:
	say "The ATM ejects your debit card, which you instinctively take.";
	now the player carries the debit card;
	clear the ATM screen.

To clear the ATM screen:
	now the ATM runs the welcome screen;
	now the ATM does not run HALsecure;
	now the ATM does not run ATM operation program;
	let target screen be a random screen that is part of the ATM;
	try examining the target screen.

Test me with "x atm / x keyboard / turn off atm / reboot atm / i / put wallet in slot / put card in slot / x card / get card / put card in slot / input 3311 / type 2953 / type 1 / input 3 on keyboard / i / input 2 / i / type 1 / type 4 / put card in atm / take card / insert card / type 2953 / take card / type 1 / n / insert card".

