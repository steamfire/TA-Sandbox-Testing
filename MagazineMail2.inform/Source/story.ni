["MagazineMail" by Dan Bowen

Ham Shack is a room. 
There is a Popular Machanics magazine in the ham shack.  The description of the magazine is ]

 "Pages"

[when play begins:
	try reading magazine.]
	
The road is a room.  There is a mailbox in the road.  The mailbox is an openable container.  The mailbox is fixed in place.

The Library is south of the road. 


The Popular Mechanics Magazine is a thing.  It is carried by the player.   The popular mechanics magazine is a container.  It is closed. It is unopenable.  

Hamsters, generators, magic tricks, and accordions are part of the magazine.  
the hamsters order form, a generators order form, a magic tricks order form, and an accordions order form are things in the magazine.

Book 1 item - The ordering process

[works]
Ordering is an action applying to one thing.
FillOutGo is a truth state that varies.  FillOutGo is initially false.

Understand "order [something]" as ordering.
Understand "hamster" as hamsters.
Understand "Generator Pack" as generators.
Understand "Magic Trick" as magic tricks.
understand "trick" as tricks.
Understand "accordion" as accordions.

Instead of ordering the noun when the player is carrying the magazine:
	if the noun is generators and the generators form is in the magazine:
		Now the player carries the generators order form;
		now FillOutGo is true;
	if the noun is hamsters and the hamsters form is in the magazine:
		Now the player carries the hamsters order form;
		now FillOutGo is true;
	if the noun is tricks and the tricks form is in the the magazine:
		now the player carries the magic tricks order form;
		now FillOutGo is true;
	if the noun is accordions and the accordions form is in the magazine:
		now the player carries the accordions order form;
		now FillOutGo is true;
	if FillOutGo is true:
		 say "You tear the [the noun] order card out of the magazine and carefully write your name and address.  You carefully affix a stamp to it, and now you're carrying the order form.";
		Now FillOutGo is false;
		rule succeeds;
	if FillOutGo is false:
		say "You already filled out the [the noun].  Do you think those things mail themselves?";
		rule fails;
[Instead of ordering the noun for more than one times:
	If the player is carrying the noun, say "You already filled out the [the noun].  Do you think those things mail themselves?";
	if the player is not carrying the noun, say "Didn't your mother teach you about order forms?";]

Instead of ordering when the player is not carrying the magazine:
	if the player is carrying the noun:
		say "you already have the filled out [the noun]. Shouldn't you do something with it?";
	otherwise:
		say " you can't order something without an order form.";

Instead of ordering something which is not the generators:
	say "you can't order that.";
	
Book 2 - The Magazine

part 2 - Reading mechanism



The Popular Mechanics Magazine has a number called the last page read. The Popular Mechanics Magazine has a number called the length. The length of the Popular Mechanics Magazine is 50. 

Understand the command "read" as something new.

Understand "read [something]" or "consult [something]" or "read in/from [something]" as reading. Reading is an action applying to one thing, requiring light.

Understand "read [number] in/from/of [something]" or "read page [number] in/from/of [something]" or "look up page [number] in/from/of [something]" or "consult page [number] in/from/of [something]" as reading it in. Reading it in is an action applying to one number and one thing, requiring light.

Named page is a kind of value. The named pages are first page, last page, next page, previous page.

To decide what number is the effective value of (L - last page):
	decide on the length of the magazine.

To decide what number is the effective value of (F - first page):
	decide on 1.

To decide what number is the effective value of (N - next page):
	let X be the last page read of the magazine plus 1;
	decide on X.

To decide what number is the effective value of (P - previous page):
	let X be the last page read of the magazine minus 1;
	decide on X.

Understand "read [named page] in/from/of [something]" or "read the [named page] in/from/of [something]" as reading it relatively in. Reading it relatively in is an action applying to one named page and one thing, requiring light.

Does the player mean reading something in the Popular Mechanics Magazine: it is very likely.

This is the magazine requirement rule:
	if the player is not carrying the Popular Mechanics Magazine, say "You're not reading anything." instead.

Check reading it relatively in:
	if the second noun is not the Popular Mechanics Magazine, say "There are no pages in [the second noun]." instead;
	abide by the magazine requirement rule.

Carry out reading it relatively in:
	let N be the effective value of the named page understood;
	now the number understood is N;
	try reading N in the magazine.

Check reading it in:
	if the second noun is not the Popular Mechanics Magazine, say "There are no pages in [the second noun]." instead;
	abide by the magazine requirement rule.

Check reading it in:
	if the number understood is greater than the length of the Popular Mechanics Magazine, say "There are only [length of Popular Mechanics Magazine in words] pages in the magazine." instead;
	if the number understood is less than 1, say "The page numbering begins with 1." instead.

Carry out reading it in:
	read page number understood.

Check reading:
	if the noun is not the Popular Mechanics Magazine, say "There are no pages in [the noun]." instead;
	abide by the magazine requirement rule.

Carry out reading:
	say "You open to the contents page. [paragraph break]";
	try reading 1 in the Popular Mechanics Magazine.


To read page (N - a number):
	now the last page read of the Popular Mechanics Magazine is N;	
	if there is a content corresponding to a page of N in the Table of magazine Contents:
		choose row with a page of N in the Table of magazine Contents;
		say "[fixed letter spacing][line break][if N is an even number]
 [N]                                             Popular Mechanics [line break] ----------------------------------------------------------------[line break][otherwise]
FEBRUARY, 1957                                                [N] [line break] ----------------------------------------------------------------[line break][end if][variable letter spacing]
[content entry][paragraph break]";
	otherwise:
		say "Page [N] appears to be boring."
		
[THIS IS HOW TO MAKE SOMETHING HAPPEN WHEN READING A SPECIFIC PAGE!]
To read page (N - 47):
	say "Your eyes burn; your ears ring. Beneath your gaze, the dreadful sigils writhe, reminding you of that which lies outside the edges of the universe...";
	end the story saying "You have lost your remaining sanity".

Part 3 - Table of Contents

PMTOC is initially "[line break][bold type]IN THIS ISSUE:[roman type][paragraph BREAK]PAGE                         ARTICLE[line break]   1..............................Table of Contents[line break]   6..............................The Quest for Rocket Power[LINE BREAK] 13..............................Exciting Outdoor Gear Reviews[line break] 16..............................Advertising Section[line break] 21..............................Miracle computers that understand your voice[line break]";

Table of magazine Contents
page	content
1	"[PMTOC]"
6	"[rocketPower]"
13	"[camping]"
16	"[advertisingSection]"
21	"[computerArticle]"


		

Part 4 - Content Articles

computerArticle is initially "Computers are Whizz-bang!".

advertisingSection is initially "[bold type]ADVERTISEMENT SECTION[roman type][paragraph break]
HAMSTERS - Ideal pets.  $2.95 per rodent.  Jer-fre's Hamstery,[line break]
1447 Apple, Muskegon 13 Michigan.  Order a Hamster today![paragraph break]
Join R.H. Goddard in the ELITE CLUB OF LIQUID FUEL ROCKET[line break]
FUELERS!  Until now amateur rocket fuels have been tame and[line break]
lacking get-up-and-go, with such humdrum materials such as[line break]
gasoline, kerosene, and potassium permanganate.  GasCo[line break]
Industries has a special offer for you.  The GasCo Model 7[line break]
Generator Pack is now available by mail order.  For making[line break]
liquid oxygen and liquid methane in your backyard, this pair[line break]
can't be beat.  Comes with one Liquid Methane Generator, and one[line break]
Liquid Oxygen Generator.  No assembly required.  Self-powered,[line break]
and draws the raw materials needed directly from the air around[line break]
you.  Just set them up and watch the cryogenic liquids flow![line break]
Order generators today![paragraph break]
ACCORDIONS - new.  Lowest prices available.  Save up to 50%. [line break]
Accordion Manufacturers, Dept 40-R, 2003 Chicago 22, Illinois.[line break]
Order an accordion today![paragraph break]
MAGIC TRICKS - Amaze—mystify-entertain!  500 TRICKS.  Contains[line break]
latest, best magic for pocket, club, stage.  Only 10¢. DOUGLAS[line break]
MAGICLAND, Dept. E, DALLAS TEXAS. Order magic tricks today![line break]".

rocketPower is initially "[bold type]Seeking Fuel for Space Rockets[roman type][paragraph break]
    Guarded by sandbags, a man sits before a panel on which[line break]
are rows of gauges. as he turns valves, needles of the gauges[line break]
spin and gyrate.  From behind the sandbags comes a hiss, and[line break]
a puff of smoke.  The man relaxes as the gauges come back to[line break]
rest.  In those few seconds all the fires of hell have been[line break]
raging in the little cylinder behind the sandbags. [line break]
Terrifically explosive liquids have just reached a[line break]
temperature half that of the sun and a velocity of 3,600[line break]
miles per hour.[paragraph break]
    Scientists do not speculate on traveling to the moon[line break]
every time they see a sky rocket.  However, they do say: 'We[line break]
are experimenting with fuels for rocekts.  It may be that in[line break]
the reasonably near future science will succeed in sending a[line break]
rocket higher than any man-made contrivance ever traveled[line break]
before.  Perhaps such a rocket might reach an altitude of[line break]
500,000 feet.  A rocket to the moon... that is still a[line break]
dream.'[paragraph break]
    The problems of a powerful enough fuel and a long-life[line break]
combustion chamber are the stumbling blocks which are holding[line break]
back rocket flights.  Certain experiments seem to favor the[line break]
use of powder explosives, but in general, liquid fuels seem[line break]
to offer the best prospects.  A combination of liquid oxygen[line break]
and liquid methane has proved very efficient.  Combustion[line break]
chambers of carbon, stainless steel alloys and copper alloys[line break]
have shown modest success, but it is likely that the ideal[line break]
metal may be an alloy yet to be discovered.[paragraph break]
    Rocket scientists have calculated that a velocity of[line break]
seven miles per second, or approximately 25,000 miles per[line break]
hour, would be necessary for a rocket to escape the earth's[line break]
gravity.  With the hissing roar of the sandbagged motor,[line break]
another significant step is taken in humankind's struggle to[line break]
conquer space.[line break]"


camping is initially "[bold type]Outdoor Gear of the Year[roman type][paragraph break]
  Outdoor activities far from power lines and modern[line break]
  conveniences have brought back many 'old-time' appliances for[line break]
  campers, boaters and others. Now you can have a wood or[line break]
  coal-burning cast-iron stove, just like Grandma used to use,[line break]
  only better.  The compact little stove stands only 10 inches[line break]
  high, is 18 by 13 inches square and weighs 40 pounds. It'll[line break]
  burn any kind of fuel, from logs and coal to patent chemical[line break]
  fuels, and an optional attachment will rig it for oil. For[line break]
  boaters, it has a top railing to keep pots and pans from[line break]
  sliding off in rough seas. It's made by Washington Stove[line break]
  Works, Box 919, Everett, Wash. 
  
  Another convenience for outdoor living in a new compact form[line break]
  is the little 6 or 12- volt electrical water-pressure system[line break]
  being made by Grover Products Co., of 1233 South Hope St., Los[line break]
  Angeles 15, Calif. The motor and pump don't take up any more[line break]
  space than half a loaf of bread, but they'll put running water[line break]
  in a car or boat with instant. automatic pressure without[line break]
  a pressure tank, and will supply up to six faucets. The[line break]
  gadget will work as a bilge pump or bait-tank circulation[line break]
  system, too.
  
  Fishers and bird-watchers can learn to spot their quarry[line break]
  by sound with a new 12-inch long-playing record of fish and[line break]
  bird noises that comes with the book Animal Sounds and[line break]
  Communication, published by the American Institute of[line break]
  Biological Sciences, 2000 P. St. N.W., Washington 6, D.C.[line break]".


instead of examining the magazine:
	say fixed letter spacing;
	say paragraph break;
	say " _ \  _ \  _ \ |  | |      \   _ \           '''''''''''''''''''[line break]";
	say " __/ (   | __/ |  | |     _ \    /  FEBRUARY ''''_''''''___,::~~[line break]";
	say "_|  \___/ _|   \__/____|_/  _\_|_\      1957 ''''''''''____,:::,[line break]";
	say "                                             '''''''''__________[line break]";
	say "  \  | __|  __| |  |   \    \ |_ _|  __|  __|''''''''''''_''''''[line break]";
	say " |\/ | _|  (    __ |  _ \  .  |  |  (   \__ \'''''''''''''''''''[line break]";
	say "_|  _|___|\___|_| _|_/  _\_|\_|___|\___|____/'''''''''''''''''''[line break]";
	say "_______________'':,''''''''''''''''''__'''''''''''''''''''''''''[line break]";
	say "__,,,__________',}y)=_'''''''''''''_____'''''''''' ''''''''''''''[line break]";
	say ",,,,___________'_Jy4aos>~'''''''____'_''''''''''''''''''''''''''[line break]";
	say ",,,,_____________?a444o2ZC~'''''_'''''''''''''''........''''''''[line break]";
	say ",,,_,____________~yZ42h44ZJ:''''''''''''''''''..........''''''''[line break]";
	say ",,,____,,,,,,,____=XUhPeehcJ~''''''''......................'''..[line break]";
	say ",,,,,:,,:,,,,,,,,,:}A6ZeePh{J;'''''''..------..........-----....[line break]";
	say ":::::::::::::::::::!\ADGeeePst='''..-``````-...''....-```````---[line break]";
	say ":::::::::::~~~~::,,,,=4DkeeePyt*'.-```````-..'''....-`````````--[line break]";
	say ":::::::::::::::,,_____~VdKPheeyJ|'``````---....-----````````````[line break]";
	say ":,,,,::,,,,,,_________':{d6Zhhe4J7_```````-----`````````````````[line break]";
	say ",,,,,,,,________''_''''''LDDGehP2tc:````````````````````  ``````[line break]";
	say ":::,__________'''''''''...rKDAehPZC/+``````````            `````[line break]";
	say "~~~:,____''''''''''.-``````,GdKZhhPGcr-```` ````          ``````[line break]";
	say "~~~~:,___'''''..--````````` _CdqGheZo|*-       ````````         [line break]";
	say "~~~~:,_''.--````````         `}bHXPeZ*>*'        ``````         [line break]";
	say ":,__''.```````                `/dDKZh/rr*~        ``````-.''_'''[line break]";
	say "''.``                          '$dd6G}^^^>!` `   ```-..'''___'''[line break]";
	say "``                             `q&RdDZz^=+rr```-.'''''''''______[line break]";
	say "```                        `   `/@@&bDX}rr*>+''''_____'''___,,,,[line break]";
	say "                       ``````--._X@@Qbd$y>!,_____,,,,___:::~~~~:[line break]";
	say "                    ```-.''''''''_JWWGC*!-  `'::~~~~::~~~~~~~~~~[line break]";
	say "                 ```.'_,,,::::,,,_,~,,,,,::_`  '~~~~~~~!!!!!!!!![line break]";
	say "             `  ```-'_::~~~~~~~~~~~~~~~~~~~~~:-  '~!!!!+++++++==[line break]";
	say "             `  ``-'_,:~~~~~~~!!!!!!!!!!!!!!;++!_-`'!=^^^^r^rrrr[line break]";
	say "               ``.'_,:::~~~~~!!!!;+++=======^^^^^=~_'!r>>>>>>>>>[line break]";
	say "           `  ``.''___,,,:~~!!!!++==^^rrrrrr^^rrrrrr^rr**<<<<<<<[line break]";
	say "`  `  ``ROCKETS OF THE FUTURE!+==^^rrr>>>>rrrr^^^rr><<**********[line break]";
	say "``.''''''__'_____,,,,::~~~!!++=^^rrr>><<<>>>>rrrr>><<<******<<>>[line break]";
	say "..''''___,,,,:::::~~~~~~~!!!+=^^rr>>><<<<<<<<<<<<<<<<<<<<<<>r^!![line break]";
	say "````.'_,,:::,,,::~~~!!!!!;+=^^rr>><<<<<<<<<<<>>>>rrrrrrrrr^^=+!~[line break]";
	say variable letter spacing;






Test me with "read from the Popular Mechanics Magazine / read the magazine / read the next page / read page 2 / read previous page / g / read the first page / read the last page of the magazine / read the next page / read 47 in magazine".



