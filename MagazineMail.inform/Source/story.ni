["MagazineMail" by Dan Bowen

Ham Shack is a room. 
There is a Popular Machanics magazine in the ham shack.  The description of the magazine is ]

 "Pages"

The Library is a room. The Popular Mechanics Magazine is carried by the player. The Popular Mechanics Magazine has a number called the last page read. The Popular Mechanics Magazine has a number called the length. The length of the Popular Mechanics Magazine is 50.

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



camping is initially "Outdoor Gear of the Year:[line break]
  Outdoor activities far from power lines and modern[line break]
  conveniences have brought back many 'old-time' appliances for[line break]
  campers, boaters and others. Now you can buy a wood or[line break]
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


PMpageHeader is initially "[fixed letter spacing] ----------------------------------------------------------[line break]
Popular Mechanics                            February 1967[line break]
----------------------------------------------------------[line break]
[variable letter spacing]".

PMTOC is initially "[paragraph break][bold type]TABLE OF CONTENTS:[roman type][paragraph BREAK]PAGE                  ARTICLE[line break] 1..............................Table of Contents[line break] 2..............................The dawning of the new rocket age[LINE BREAK] 3..............................Exciting Outdoor Gear Reviews[line break] 4..............................State of the art in asteroid defense machinery[line break] 5..............................Outdoor activities are new again[line break] 6..............................Advertising Section[line break] 7..............................Miracle computers that understand your voice[line break]";

Table of magazine Contents
page	content
1	"[PMTOC]"
2	"dhuma jyotih salila marutam / samnipatah kva meghah / samdes arthah kva patukaranaih / pranibhih prapaniyah"
3	"[camping]"
13	"amathesteron pws eipe kai saphesteron"
50	"Rrgshilz maplot..."

To read page (N - a number):
	now the last page read of the Popular Mechanics Magazine is N;
	if there is a content corresponding to a page of N in the Table of magazine Contents:
		choose row with a page of N in the Table of magazine Contents;
		say "[PMpageHeader][content entry]'[paragraph break]";
	otherwise:
		say "Page [N] appears to be blank."

To read page (N - 47):
	say "Your eyes burn; your ears ring. Beneath your gaze, the dreadful sigils writhe, reminding you of that which lies outside the edges of the universe...";
	end the story saying "You have lost your remaining sanity".

Test me with "read from the Popular Mechanics Magazine / read the magazine / read the next page / read page 2 / read previous page / g / read the first page / read the last page of the magazine / read the next page / read 47 in magazine".



