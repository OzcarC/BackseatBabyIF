"Lab1" by Ozcar Cayetano

After printing the banner text:
	say "You are rushing down Washington Avenue, in your small car, because the Baby in the backseat is hysterically crying. You do not know what it wants but you decide to pull over at a busy intersection to try and make the rest of the 4 hour drive home barable."

	
[Use "now" stmt to change state of flags or other things]

["move obj to room"]

["try cmd" attempts to execute a player's cmd as if they typed it]


[Understand
	a video game is a thing. Understand "video games" as a plural of video game.
	understand the command "embrace" as something new. 
	understand the command "smootch" as "kiss".
	
	LOOK AT UNDERSTAND SLIDE FOR MORE ADVANCED USES
]

[Actions
	1) What "-ing" verb? (taking, dreaming, attacking)
	2) What command does player type? (take, dream, attack)
	
	___ is an action applying to ____ (can apply to "nothing")
	___ is an action requiring ____ 
		does it require touchable noun or two?
		
	ex:
	Daydreaming is a n action applying to nothing.
	Understand daydream as daydreaming.
	
	Report daydreaming:
		say "Your eyes lose focus and you let your mind wander.".

	ex2:
	Diagnosing is an action applying to one visible thing. Understand "diagnose [something]" as diagnosing. 
	
	Check diagnosing:
		if the noun is not a person, say "only people can have diagnoses." instead.
		
	Carry out diagnosing:
		say " You're not a medical expert."
	
	Instead of diagnosing the player:
		say "You feel fine!"
				
]

[Tables
	Table of Ask Responses			(must have table of something)
	Topic	Response				(must have column names even if only 1, tab sep.)
	"VideoGames"	"They are so cool!"	(records)
	
	
After asking April about something:
	if the topic understood is a topic listed in the table of ask responses:
		say "April says, '[Response entry]'";
	otherwise:
		say "April says 'huh? She's not the brightest, after all.".
		

Strong, look at documents.
]

[Relations
	Can ignore for my case but sets relations between many to many, one to one, many to one, one to many, etc.
]

[World setup]


[Player setup]
The player has a number called balance. The player has balance 100.
The player has a number called tickets. The player has tickets 0.

before examining the player:
	if the player is in the arcade:
		now the description of the player is "Your balance is $[balance of the player] and you have [tickets of the player] tickets.";
	else:
		now the description of the player is "Your balance is $[balance of the player]."

[decrease the balance of the player by x;
	or
now the balance of the player is the balance of the player minus 2;]

[Car]
The Car is a room. "A beat up red sedan with no headlights, just stickers. Outside is a busy intersection."

A Baby is a person in the car. The description is "The Baby is drooling all over it's yellow-orange bib and swirling its hair into a spiral."

Instead of taking baby, say "It's only going to slow you down, leave it here."

[Diaper bag]
The diaper bag is in The Car. 
The diaper bag is a container. 
The diaper bag contains diapers, a bottle, old fruit snacks, and rash cream. 

Instead of taking bag, say "The bag should stay with the baby."

Instead of taking rash cream, say "That's not gonna help the baby. You have that incase you get that strange rash that prevents you from sitting properly again." 

[Intersection]
Outside of the car is The Intersection. 

The Intersection is a room. "There is an Arcade to the west, a large Gas Station to the east and the Car in the Intersection."

[Diner]
The Diner is a room south of the Intersection. "The Intersection is to the north, to the west is the Arcade, and to the east is the Gas Station."
The Intersection is north of the Diner.

[Arcade]
The Arcade is a room west of the Intersection. 
The Intersection is east of the Arcade.

The skeeball machine is in the Arcade. The description is "A game of skill, potential to gain upwards of 100 tickets. You are not very skilled. Costs $3 to play."


[Gas Station]
The Gas Station is a room east of the Intersection. The description is "It's empty. There are no cars. Just a Food Stand to the North and the Convenience Store to the East."
The Intersection is west of the Gas Station.

[Food stand]
The Food Stand is a room north of the Gas Station.
The Gas Station is south of the Food Stand.

[Convenience Store]
The Convenience Store is a room east of the Gas Station. 
The description is "The cashier seems occupied with someone on the phone. The actual store only has one shelf of snacks. To the west is the Gas Station."
The Gas Station is west of the Convenience Store. 

[snack shelf]
The snack shelf is a container. The description is "The small shelf has a variety of snacks." 

The snack shelf is in the Convenience Store. 
The snack shelf contains a bag of potato chips, a candy bar, a room temperature orange soda, and refrigerated milk.

the bag of potato chips is a thing. it has a number called price. the price of the bag of potato chips is 3.

After taking something:
	if the price of the noun is greater than zero:
		say "You paid [the price of the noun].";
		decrease the balance of the player by the price of the noun.
	