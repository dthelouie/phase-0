 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Open doors to find weapons, monsters, or treasure!
// Overall mission: Collect 10 treasures by finding them or defeating monsters that guard them!
// Goals: Collect 10 treasures
// Characters: You, your partner, monsters
// Objects: You, your partner
// Functions: open door, search room, fight monster, run

// Pseudocode
// DEFINE HERO: name, base attack value = 3, health = 10HP, treasures found = 0
// DEFINE PARTNER: name, base attack value = 1, health = 10HP
// OPEN DOOR: randomize monster, weapon, treasure, curse
// 			randomize attack value of monster (1-15) or item(1-5) found in room
// IF no monster is found, partner can SEARCH ROOM for more items
// IF treasure is found or monster is defeated, add one to treasure counter
// IF monster is found, choose to FIGHT or RUN
// 		FIGHT: measure your attack value plus partner's attack value against monster
//		RUN: random number from 1-6, if number = 5 or 6, successfully run. if number = 1 - 4, take 1 damage
// IF damage counter = 0 (loss) or treasure counter = 10 (win), the game is over
//

// Initial Code
var hero = {
	name: "Razor",
	strength: 3,
	health: 10,
	treasures_found: 0
}

var partner = {
	name: "Mirana",
	strength: 1,
	health: 10
}

// function open_door() {
// 	var hero = true, partner = true, monster = false;
// 	var room = Math.random();
// 	if (room < .05){
// 		alert("You found a treasure!");
// 		hero.treasures_found += 1;
// 	}	
// 		else if (room < .65){
// 			monster = true;
// 			react = prompt("You found a monster! Do you want to fight or run?");
// 			if(react == "fight"){
// 				monster_strength = Math.floor(Math.random() * ((15-1)+1) + 1);
// 				if (partner == true){
// 				strength = hero.strength + partner.strength;
// 				}
// 				else if (partner == false){
// 					strength = hero.strength;
// 				}
// 				if (monster_strength > strength){
// 					hero.health -= 1;
// 					partner.health -= 1;
// 				} 
// 				else if (monster_strength < strength){
// 				alert("You won the fight!");
// 				hero.treasures_found += 1;
// 				}
// 			}
// 			if(react == "run"){
// 				num = Math.floor(Math.random() * ((6-1)+1) + 1);
// 				if(num > 4) {
// 					alert("You got away!");
// 				}
// 				else if(num < 5){
// 					alert("You took damage!");
// 					hero.health -= 1;
// 					partner.health -= 1;
// 				}

// 			}
			
// 		}
// 		else if (room < .85){
// 			alert("You got cursed! Lose 1 strength");
// 			hero.strength -= 1;
// 		}
// 		else if (room < 1){
// 			alert("You found an item!");
// 			bonus = Math.random();
// 				if (bonus < 0.25){
// 					hero.strength += 1;
// 					alert("You gained 1 strength!");
// 				}
// 				else if (bonus < 0.5){
// 					hero.strength += 2;
// 					alert("You gained 2 strength!");
// 				}
// 				else if (bonus < 0.75){
// 					hero.strength += 3;
// 					alert("You gained 3 strength!");
// 				}
// 				else if (bonus < 1){
// 					hero.strength += 4;
// 					alert("You gained 4 strength!");
// 				}
// 		}
// 		if (monster == false && partner == true){
// 			alert("Your partner can search the room for items.");
// 		}
// }

// function search_room() {
// 	num = Math.random();
// 	if (num <= 0.33){
// 		alert("You got cursed! Lose 1 strength");
// 		partner.strength -= 1;
// 	}
// 	else if (num > 0.33){
// 		bonus = Math.random();
// 				if (bonus < 0.3){
// 					partner.strength += 1;
// 					alert("You gained 1 strength!");
// 				}
// 				else if (bonus < 0.6){
// 					partner.strength += 2;
// 					alert("You gained 2 strength!");
// 				}
// 				else if (bonus < 0.85){
// 					partner.strength += 3;
// 					alert("You gained 3 strength!");
// 				}
// 				else if (bonus < 1){
// 					partner.strength += 4;
// 					alert("You gained 4 strength!");
// 				}
// 	}
// }
// if (hero.health == 0 || hero.strength == 0){
// 	hero = false;
// 	alert("Game over, try again!");
// }

// if (partner.health == 0 || partner.strength == 0){
// 	partner = false;
// 	alert("Your partner died!");
// }



// Refactored Code

function open_door() {
	var hero = true, partner = true, monster = false;
	var room = Math.random();
	if (room < .05){
		alert("You found a treasure!");
		hero.treasures_found += 1;
	}	
		else if (room < .65){
			monster = true;
			react = prompt("You found a monster! Do you want to fight or run?");
			if(react == "fight"){
				hero.fight;
			}
			if(react == "run"){
				hero.run;
			}
			
		}
		else if (room < .85){
			hero.got_cursed;
		}
		else if (room < 1){
			alert("You found an item!");
			hero.found_item;
				}
		if (monster == false && partner == true){
			alert("Your partner can search the room for items.");
		}
}

function fight() {
				if (partner == true){
					strength = hero.strength + partner.strength;
				}
				else if (partner == false){
					strength = hero.strength;
				}
		monster_strength = Math.floor(Math.random() * ((15-1)+1) + 1);
		strength = hero.strength + partner.strength;
			if (monster_strength > strength){
				alert("You took damage!");
				hero.health -= 1;
				partner.health -= 1;
			} else if (monster_strength < strength){
				alert("You won the fight and gained a treasure!");
				hero.treasures_found += 1;
			}
}

function run() {
	num = Math.floor(Math.random() * ((6-1)+1) + 1);
				if(num > 4) {
					alert("You got away!");
				}
				else if(num < 5){
					alert("You took damage!");
					hero.health -= 1;
					partner.health -= 1;
				}
}

function found_item() {
	num = Math.floor(Math.random() * ((4-1)+1) + 1);
	hero.strength += num;
	alert("You gained " + num.toString + " strength!");
}

function search_room() {
	num = Math.random();
	if (num <= 0.33){
		partner.got_cursed;
	}
	else if (num > 0.33){
		partner.found_item;
	}
}

function got_cursed() {
	alert("You got cursed! Lose 1 strength.");
	strength -= 1;
}

if (hero.health == 0 || hero.strength == 0){
	hero = false;
	alert("Game over, try again!");
}

if (partner.health == 0 || partner.strength == 0){
	partner = false;
	alert("Your partner died!");
}

hero.open_door

// Reflection
// 1. What was the most difficult part of this challenge?
// 	
// 2. What did you learn about creating objects and functions that interact with one another?
//	
// 3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//	
// 4. How can you access and manipulate properties of objects?
//	
//
//
//
//
//