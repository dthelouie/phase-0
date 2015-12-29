 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Open doors to find weapons, monsters, or treasure!
// Overall mission: Collect 3 treasures by finding them or defeating monsters that guard them!
// Goals: Collect 3 treasures
// Characters: You, your partner, monsters
// Objects: You, your partner
// Functions: open door, search room, fight monster, run

// Pseudocode
// DEFINE HERO: name, base attack value = 3, health = 10HP, treasures found = 0
// DEFINE PARTNER: name, base attack value = 1, health = 10HP
// OPEN DOOR: randomize monster, weapon, treasure, curse
//       randomize attack value of monster (1-15) or item(1-5) found in room
// IF no monster is found, partner can SEARCH ROOM for more items
// IF treasure is found or monster is defeated, add one to treasure counter
// IF monster is found, choose to FIGHT or RUN
//     FIGHT: measure your attack value plus partner's attack value against monster
//    RUN: random number from 1-6, if number = 5 or 6, successfully run. if number = 1 - 4, take 1 damage
// IF damage counter = 0 (loss) or treasure counter = 10 (win), the game is over
//

// Initial Code
// var hero = {
//   name: "Razor",
//   strength:  3,
//   health: 8,
//   treasures_found: 0,
//   alive: true,
//   open_door: function() {
//     var monster_found = false;
//     if (hero.alive == false){
//       alert("You're dead!")
//         }
//     else{
//     var room = Math.random();
//     if (room < .05){
//       alert("You found a treasure!");
//       hero.treasures_found += 1;
//     }  
//     else if (room < .65){
//       monster.found = true;
//       var react = prompt("You found a monster! Do you want to fight or run?");
//       monster.strength = Math.floor(Math.random() * ((15-1)+1) + 1)
//       if(react == "fight"){
//         if (partner.alive == true){
//         var strength = hero.strength + partner.strength;
//         }
//         else if (partner.alive == false){
//           var strength = hero.strength;
//         }
//         if (monster.strength > strength){
//           alert("You lost the fight, you both lose 2 health!")
//           hero.health -= 2;
//           partner.health -= 2;
//           hero.life_check
//         }
//         else {
//         alert("You won the fight! You found 1 treasure!");
//         hero.treasures_found += 1;
//         }
//         }
      
//       if(react == "run"){
//         var num = Math.floor(Math.random() * ((6-1)+1) + 1);
//         if(num > 4) {
//           alert("You got away!");
//         }
//         else if(num < 5){
//           alert("You took damage!");
//           hero.health -= 1;
//           partner.health -= 1;
//           hero.life_check
//         }

//       }
      
//     }
//     else if (room < .85){
//       alert("You got cursed! Lose 1 strength");
//       hero.strength -= 1;
//     }
//     else if (room < 1){
//       alert("You found an item!");
//       var bonus = Math.random();
//         if (bonus < 0.25){
//           hero.strength += 1;
//           alert("You gained 1 strength!");
//         }
//         else if (bonus < 0.5){
//           hero.strength += 2;
//           alert("You gained 2 strength!");
//         }
//         else if (bonus < 0.75){
//           hero.strength += 3;
//           alert("You gained 3 strength!");
//         }
//         else if (bonus < 1){
//           hero.strength += 4;
//           alert("You gained 4 strength!");
//         }
//     }
//     if (monster.found == false && partner.alive == true){
//       alert("Your partner can search the room for items.");
//     }
// }
// },
//   life_check: function(){
//     if (hero.health == 0 || hero.strength == 0){
//       hero.alive = false;
//       alert("Game over, try again!");
//     }
//     else if(hero.treasures_found == 3){
//       alert("You found three treasures! You win!")
//     }

//     if (partner.health == 0 || partner.strength == 0){
//       partner.alive = false;
//       alert("Your partner died!");
//   }
// }
// }

// var monster = {
//   found: false,
//     }

// var partner = {
//   name: "Mirana",
//   strength: 1,
//   health: 5,
//   alive: true,
//   search_room: function() {
//   if (monster.found == true){
//     return (alert("You cannot search the room!"))
//   }
//   else if (monster.found == false){
//     var num = Math.random();
//     if (num <= 0.33){
//       alert("You got cursed! Lose 1 strength");
//       partner.strength -= 1;
//       hero.life_check
//     }
//     else if (num > 0.33){
//       var bonus = Math.random();
//         if (bonus < 0.3){
//           partner.strength += 1;
//           alert("You gained 1 strength!");
//         }
//         else if (bonus < 0.6){
//           partner.strength += 2;
//           alert("You gained 2 strength!");
//         }
//         else if (bonus < 0.85){
//           partner.strength += 3;
//           alert("You gained 3 strength!");
//         }
//         else if (bonus < 1){
//           partner.strength += 4;
//           alert("You gained 4 strength!");
//         }
//         }
//   }
// }


// Refactored Code
var hero = {
  name: "Razor",
  strength:  3,
  health: 10,
  treasures_found: 0,
  alive: true,
  open_door: function() {
      monster.found = false;
      var room = Math.random();
      if (room < .05){
        alert("You found a treasure!");
        hero.treasures_found += 1;
      }  
      else if (room < .65){
        monster = true;
        var react = prompt("You found a monster! Do you want to fight or run?");
        if(react == "fight"){
         hero.fight;
        }
        else if(react == "run"){
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
  },
  fight: function() {
    monster.strength = Math.floor(Math.random() * ((15-1)+1) + 1)
        if (partner == true){
          var strength = hero.strength + partner.strength;
        }
        else if (partner == false){
          var strength = hero.strength;
        }
      if (monster.strength > strength){
        alert("You took damage!");
        hero.health -= 1;
        partner.health -= 1;
        hero.life_check();
      } else if (monster.strength < strength){
        alert("You won the fight and gained a treasure!");
        hero.treasures_found += 1;
      }
  },
  run: function() {
      var num = Math.floor(Math.random() * ((6-1)+1) + 1);
        if(num > 4) {
          alert("You got away!");
        }
        else if(num < 5){
          alert("You took damage!");
          hero.health -= 1;
          partner.health -= 1;
        }
  },
  found_item: function() {
      var num = Math.floor(Math.random() * ((4-1)+1) + 1);
      hero.strength += num;
      alert("You found an item!");
  },
  got_cursed: function() {
      alert("You got cursed! Lose 1 strength.");
      hero.strength -= 1;
        hero.life_check();
  },
    life_check: function(){
    if (hero.health == 0 || hero.strength == 0){
   hero.alive = false;
   alert("Game over, try again!");
  }

  if (partner.health == 0 || partner.strength == 0){
    partner.alive = false;
    alert("Your partner died!");
  }
    }
}

var monster = {
  found: false,
    }

var partner = {
  name: "Mirana",
  strength: 1,
  health: 5,
  alive: true,
  search_room: function() {
      var num = Math.random();
      if (num <= 0.33){
        partner.got_cursed;
      }
      else if (num > 0.33){
        partner.found_item;
      }
  },
  got_cursed: function() {
      alert("You got cursed! Lose 1 strength.");
      partner.strength -= 1;
  },
  found_item: function() {
    var num = Math.floor(Math.random() * ((4-1)+1) + 1);
    hero.strength += num;
    alert("You found an item!");
  }
}

console.log(hero.open_door())
console.log(partner.search_room())
console.log(hero.open_door())

// Reflection
/* 1. What was the most difficult part of this challenge?
//	The most difficult part of this challenge was making sure that each function was operating
//	correctly, and interacting with other functions correctly.
// 2. What did you learn about creating objects and functions that interact with one another?
//  Objects and functions can manipulate 
// 3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//  I didn't learn about any  new build-in methods, but I was able to separate my game's methods
//	into smaller methods to avoid writing the same block multiple times.
// 4. How can you access and manipulate properties of objects?
//  You can access properties of objects by calling them like methods, and manipulate them
//	by equating them to new values.
//
//
//
*/
