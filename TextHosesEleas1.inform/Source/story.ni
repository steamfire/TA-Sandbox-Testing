"TestHosesEleas" by Eleas Version 1

Use scoring.

Book - Fuel handling

Part - Gas

Chapter - What is a gas

Gas is a kind of value. The plural of gas is gasses. 
A nozzle width is a kind of value. A gas has a nozzle width. 
2.9 inch specifies a nozzle width with parts whole and fraction (optional, preamble optional).

Chemical notation is a kind of value. A gas has a chemical notation.
A tint is a kind of value. A gas has a tint. 

[Workaround for a bug in the units system.]
To decide which text is nozzle-size of (item - a thing):
	if the item is not a fuel-line component and the the item is not a fuel generator:
		decide on "";
	decide on "[nozzle width of the gas of the item][if the fraction part of the nozzle width of the gas of the item is 0] inch[end if]".

Section - The actual gasses

The gasses are oxygen, methane.

The chemical notations are O2, CH4.  
The chemical notation of oxygen is O2. The chemical notation of methane is CH4.

The tints are green, yellow. 
The tint of oxygen is green. The tint of methane is yellow.

The nozzle width of oxygen is 2.0 inch. The nozzle width of methane is 1.5 inch.


Part - Fuel chain

Chapter - Components of the fuel-chain 

A generator is a kind of device. Every generator has a gas. The printed name of a generator is usually "liquid [gas] fuel generator". Understand "liquid" or "fuel" as a generator.
A fuel-line component is a kind of thing. Every fuel-line component has a gas.

[Workaround -- I can't seem to query a relation to values in a loop]
To decide which gas is the/-- vapor of (gizmo - a generator):
	repeat with fume running through gasses:
		if the fume flows through the gizmo, decide on the fume.

Gas-provision relates various generators to various gasses. The verb to channel means the gas-provision relation. The verb to flow through means the reversed gas-provision relation.
One generator (called its fuel generator) channels every gas. [This is what creates one generator for each possible gas.] 
Understand the gas property as describing a generator.

Belonging relates various fuel-line components to various generators. The verb to belong to means the belonging relation.
A fuel port, a fuel nozzle, and a fuel pipe are kinds of fuel-line component. One fuel port, one fuel nozzle, and one fuel pipe belongs to every generator. [This last sentence creates one of each per fuel generator.]

Section - Common behavior

The initial appearance of a fuel pipe is usually "There's a [nozzle-size of item described] pipe sticking out of the wall here[if the item described incorporates a generator]. It's securely connected to a nearby [random generator part of the item described][end if]."

First check an actor taking when the noun is a fuel generator part of something (this is the give semi-funny quip when trying taking a placed generator rule):
	say "[The noun] is securely bolt...- glued...- [italic type]stuck[roman type] to [the random fuel pipe in location], and won't budge." instead.

After dropping a generator (called gizmo) when the location holds a fuel pipe (called conduit) and the gas of the conduit is the gas of the gizmo:
	say "The [gizmo] settles to the floor. Conveniently, its [nozzle-size of conduit] output coupling lines up with the [nozzle-size of conduit] inch pipe in the wall, and they snap together, sealed perfectly.";
	now the gizmo is part of the conduit;
	increase score by 10;
	rule succeeds.

After dropping a generator when the location holds a fuel pipe (called conduit), say "The liquid oxygen generator clunks to the floor, but fails to connect. Its output coupling doesn't fit with the [nozzle-size of the conduit] pipe in the wall."


Section - Property based parse matching

[This is why we duplicate the data further down; having the tokens as a property of an object means we can use them as Understand tokens for that self-same object.]
A fuel port has a chemical notation. Understand the chemical notation property as describing a fuel port. Understand the gas property as describing a fuel port.
Before printing the name of a fuel port, say "[chemical notation of the gas of the item described] ".
A fuel nozzle has a tint. Understand the tint property as describing a fuel nozzle.
Before printing the name of a fuel nozzle, say "[tint of the gas of the item described] ".
A fuel pipe has a nozzle width. Understand the nozzle width property as describing a fuel pipe. A fuel pipe is fixed in place.
Before printing the name of a fuel pipe, say "[nozzle-size of the item described] ".
Understand "inch" as a fuel pipe. [Workaround for the fact that having an inch without a fraction strips the "inch" part from the property.]

Section - Tethering the components 

[We use the existing belonging relation to duplicate properties and tie the fuel line components together.]
When play begins (this is the workaround fix for auto-generating fuel related items rule):
	now every generator is improper-named;
	repeat with item running through generators:
		let current gas be the vapor of the item;
		now the gas of the item is the current gas;
		repeat with component running through fuel-line components belonging to the item:
			now the gas of the component is the current gas;
			if the component is a fuel port:
				now the chemical notation of the component is the chemical notation of the current gas;
			if the component is a fuel nozzle:
				now the tint of the component is the tint of the current gas;
			if the component is a fuel pipe:
				now the nozzle width of the component is nozzle width of the current gas;

Part - Placing identical objects

The placement rules is an object based rulebook. The placement rulebook has an object called the item in question.

When play begins (this is the convenience rule for placing duplicate objects rule):
	repeat with item running through fuel-line components:
		follow the placement rules for the item.
		
First placement rule for a thing (called the item): now the item in question is the item.


Book - The world

Part - Locales

The Pump Station is a room. "This is the pump station, where oxygen can be pumped. A corridor leads west to the Radio Station."
A placement rule for an oxygen fuel pipe: now the item in question is in the pump station.

The Radio Station is west from the Pump Station. "This is the radio station, where methane can be pumped from the remnants of the old broadcasting company's fridge. Don't ask. A corridor leads east to the Pump Station."
A placement rule for a methane fuel pipe: now the item in question is in the radio station.

The Driveway is north from the Pump Station.
The silver spaceship is in the driveway. It is fixed in place.
All fuel ports are part of the silver spaceship.