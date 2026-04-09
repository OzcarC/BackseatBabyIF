"Lab1" by Ozcar Cayetano

After printing the banner text:
	say "[line break]You are rushing down Washington Avenue, in your small car, because the Baby in the backseat is hysterically crying. You do not know what it wants but you decide to pull over at a busy intersection to try and make the rest of the 4 hour drive home barable."

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

[Time & Events

- When play begins
- Every turn when
- At the time when
]

[if <cond> x times]

[end the story saying "ending text"]


[World setup]
The winnings is a number that varies. 

[Player setup]
The player has a number called balance. The player has balance 100.
The player has a number called tickets. The player has tickets 0.

Before examining the player:
	if the player is in the arcade:
		now the description of the player is "Your balance is $[balance of the player] and you have [tickets of the player] tickets.";
	else:
		now the description of the player is "Your balance is $[balance of the player]."

[Car]
The Car is a room. "A beat up red sedan with no headlights, just stickers. Outside is a busy intersection."

A Baby is a person in the car. The description is "The Baby is drooling all over it's yellow-orange bib and swirling its hair into a spiral."

Instead of taking baby, say "It's only going to slow you down, leave it here."

[Diaper bag]
The diaper bag is in The Car. 
The diaper bag is a container. 
The diaper bag contains diapers, a bottle, old fruit snacks, and rash cream. 

Instead of taking bag, say "The bag should stay with the baby."

Instead of taking the diapers, say "The baby has not soiled their diaper, you should leave this here until it's needed."

Instead of taking rash cream, say "That's not gonna help the baby. You have that incase you get that strange rash that prevents you from sitting properly again." 

[Intersection]
Outside of the car is The Intersection. 

The Intersection is a room. "There is an Arcade to the west, a large Gas Station to the east and the Car in the Intersection."

[Arcade]
The Arcade is a room west of the Intersection. "Inside this arcade you see a prize counter, some games, and a ball pit. You can use your money to play games and win tickets. The tickets can be used to get prizes at the prize counter. There are exits in all directions to the Intersection."
The Intersection is east of the Arcade. The Intersection is west of the Arcade. Outside of the Arcade is The Intersection. The Intersection is north of the Arcade. The Intersection is south of the Arcade. 

An arcade machine is a kind of thing. it is always in the Arcade. it is never portable. it always has a number called price. it usually has a number called payout.

A prize is a kind of thing. it always has a number called price. 

The prize counter is a container in the Arcade. It contains a spinning top, a slinky, a rattle, a mini soccer game, and crayons.

[prizes]
The spinning top is a prize. The price of the spinning top is 40. The description is "A simple neon yellow spinning top. It is small enough to swallow. [if the price of the noun is greater than zero]You can trade in [the price of the noun] tickets for it."

The slinky is a prize. The price of the slinky is 75. The description is "A colorful plastic slinky. Provides minutes of entertainment before it gets irreparably tangled. [if the price of the noun is greater than zero]You can get it for [the price of the noun] tickets."

The rattle is a prize. The price of the rattle is 30. The description is "A bean filled rattle made of splintering wood. There are no designs but the sound is quite pleasant. [if the price of the noun is greater than zero]It is only [the price of the noun] tickets."

The mini soccer game is a prize. The price of the mini soccer game is 100. The description is "This mini game of soccer is a 1v1 controlled by a single button on both ends. Endless fun for two players (or a baby that has no idea what is going on). [if the price of the noun is greater than zero]It will cost you [the price of the noun] tickets, but it might be worth it!"

The crayons are a prize. The price of the crayons is 10. The description is "A pack of 8 crayons. It has all the colors you might need... and white. [if the price of the noun is greater than zero]It has the lowest exchange price of [the price of the noun] tickets!"

[skeeball]
The skeeball machine is an arcade machine. The price of the skeeball machine is 20. The payout of the skeeball is 100. The description is "A game of skill, potential to gain upwards of [payout of the noun] tickets. You are not very skilled."

[basketball]
The basketball hoop is an arcade machine. The price of the basketball hoop is 25. The payout of the basketball hoop is 30. The description is "You used to play basketball in school, maybe your skills will come back to you. The balls are slightly smaller than regular and deflated a bit. This potential payout is only up to [payout of the noun] tickets but its really fun" 

[water gun target]
The water gun game is an arcade machine. The price of the water gun game is 10. The payout of the water gun game is 20. The description is "A classic carvnival game where you aim at the target with your water gun and try to make the lights go all the way up. The potential payout is [payout of the noun] tickets."

[punching machine]

The punching machine is an arcade machine. The price of the punching machine is 5.The payout of the punching machine is 15. The description is "Test your strength with this machine. The potential payout is [payout of the noun] tickets."

[ball pit]
The ball pit is an arcade machine. The price of the ball pit is 1. The description is "It is filthy. It probably has not been cleaned in months. You can't gain tickets, but maybe there is hidden treasure here!"

After playing ball pit:
	if a random chance of 1 in 6 succeeds:
		say "You found treasure!";
		now winnings is a random number between 1 and 20;
		increase the balance of the player by winnings;
		say "You gained $[winnings]! Woohoo!";
		now winnings is zero.

[Gas Station]
The Gas Station is a room east of the Intersection. The description is "It's empty. There are no cars. Just a Food Stand to the North, the Convenience Store to the East, and the Intersection to the West."
The Intersection is west of the Gas Station.

[Food stand]
The food rack is a container. It is in the Food Stand. It contains a spicy mango, a hot dog, and a coconut water. 
The Food Stand is a room north of the Gas Station. "An older man is on the other side of the stand. [if counter contains something] There are foods on the rack. [otherwise] There are no more new foods on the rack. To the south is the Gas Station."
The Gas Station is south of the Food Stand.


[Convenience Store]
The Convenience Store is a room east of the Gas Station. 
The description is "The cashier seems occupied with someone on the phone. The actual store only has one shelf of snacks. To the west is the Gas Station."
The Gas Station is west of the Convenience Store. Outside of the Convenience Store is the Gas Station.

[snack shelf]
The snack shelf is a container. The description is "The small shelf has a variety of snacks." 
The snack shelf is in the Convenience Store. 
The snack shelf contains a bag of potato chips, a candy bar, an orange soda, and milk.

[snack pricing]
The bag of potato chips has a number called price. the price of the bag of potato chips is 4.
The candy bar has a number called price. the price of the candy bar is 2. 
The orange soda has a number called price. the price of the orange soda is 3. 
The milk has a number called price. the price of the milk is 5.

[snack descriptions]
The description of the bag of potato chips is "There is an excessive sodium and calorie warning on the front. Barbeque flavored, yum!"

The description of the candy bar is "A hefty chocolate flavored candy bar."

The description of the orange soda is "A fizzy, radioactive orange drink. It is room temperature... "

The description of the milk is "A full gallon of whole milk. It is cold to the touch even though it is on the shelf, weird."

[rules]

[drive]
[
Driving is an action applying to nothing. Understand "drive" as driving. 
Before driving:
	if the happiness of the baby is zero:
		say "The baby continues crying uncontrollably. You decide to endure it.";
		end the story saying "The drive was 4 hours but it felt like an eternity with the progressively getting louder. Your ears are ringing and your partner is incredibly mad when they see the baby. Guess you're sleeping on the couch tonight!";
	otherwise if the happiness of the baby is less than zero:
		say "The baby has stopped crying suddenly. It is in such a peaceful slumber that it's not even moving!";
		end the story saying "The drive was 4 hours but the time flew by. The baby was so relaxed that you even blasted your music down the highway and it did not wake up. You get home and instantly go to bed while your partner looks after the baby. As soon as you turn the lights off, you hear a blood curdling scream. Oh well, time for bed!"';
	otherwise if the happiness of the baby is greater than zero:
		say "The baby seems entertained and fed. You can finally continue on your way home in peace.";
		end the story saying "The drive was as good as a 4 hour drive can be. You get home tired, put the baby to bed, and lay in bed with your partner. After a few minutes of pondering your existence, you set your sights on tomorrow and the adventures that await!"

]
	
After playing:
	if a random chance of 1 in 16 succeeds:
		say "You won the jackpot!";
		now the winnings is the payout of the noun;
		increase the tickets of the player by the winnings;
	otherwise:
		now the winnings is a random number between 0 and the payout of the noun divided by two;
		increase the tickets of the player by the winnings;
	say "You got [winnings] tickets.[line break]You now have [tickets of the player] tickets.";
	now winnings is zero.


[true bad ending]
Every turn:
	if the turn count is greater than 50:
		if the player is in the car:
			[try drive;]
			end the story saying "You drive home, the baby is still crying.";
		otherwise:
			say "It's getting late, you should head home." instead. 

[Pricing text after description ]
After examining something:
	if the noun provides the property price:
		if the price of the noun is greater than zero:
			if the noun is portable:
				say "[if the noun is a prize][otherwise]It is priced at $[price of the noun].";
			otherwise:
				say "It costs $[price of the noun] to play."				
			
[transaction and confirmation]
check taking:
	if the noun provides the property price:
		if the noun is a prize:
			if the tickets of the player is less than the price of the noun:
				say "You do not have enough tickets for [the noun]." instead;
		otherwise:
			if the balance of the player is less than the price of the noun:
				say "You do not have enough money to buy [the noun]." instead.

After taking:
	if the noun provides the property price:
		if the price of the noun is greater than zero:
			if the noun is a prize:
				say "You traded [the price of the noun] tickets for [the noun].";
				decrease the tickets of the player by the price of the noun;
				now the price of the noun is zero;
			otherwise:
				say "You paid $[the price of the noun] for [the noun].";
				decrease the balance of the player by the price of the noun;
				now the price of the noun is zero;
	say "You put [the noun] in your pockets."


Playing is an action applying to one visible thing. Understand "play [something]" as playing. 
	Check playing:
		if the noun is not an arcade machine, say "You can only play with arcade machines." instead.
		
	Carry out playing:
		say "[if the noun is ball pit]You gave the attendant $[price of the noun].[otherwise]You put $[price of the noun] into the machine.";
		decrease the balance of the player by the price of the noun;
		say "You now have $[balance of the player]."
	
After playing:
	if a random chance of 1 in 16 succeeds:
		say "You won the jackpot!";
		now the winnings is the payout of the noun;
		increase the tickets of the player by the winnings;
	otherwise:
		now the winnings is a random number between 0 and the payout of the noun divided by two;
		increase the tickets of the player by the winnings;
	say "You got [winnings] tickets.[line break]You now have [tickets of the player] tickets.";
	now winnings is zero.
