/*
Die Class in JavaScript

Pseudocode:
CREATE die object
DEFINE how many sides it has
DEFINE FUNCTION roll
RANDOMIZE number from 1 to the amount of sides
RETURN number rolled
*/

var die = {
	sides: undefined
}

die.roll = function(){
	var result = Math.floor(Math.random() * die.sides) + 1;
	console.log("You rolled a " + result + "!");
}

die.sides = 6
die.roll()

/*
Bingo Board

Pseudocode:
CALL A SPACE:
CREATE random generators for letter B, I, N, G, or O, and a number from 1-100
ASSIGN letter and number to variables
TRANSFORM number to a string
CONCATENATE strings to create called space

CHECK BOARD FOR CALLED SPACE:
ASSIGN letter to nested array
CHECK letter's array for called number
IF number exists in array, replace it with "X"
*/

var bingo = {
	call: function(){
		var rand_letter = Math.floor(Math.random() * 5) + 1;
		bingo.letter = ""
		if (rand_letter == 1){
			bingo.letter = "B";
		} else if (rand_letter == 2){
			bingo.letter = "I";
		} else if (rand_letter == 3){
			bingo.letter = "N";
		}  else if (rand_letter == 4){
			bingo.letter = "G";
		}  else if (rand_letter == 5){
			bingo.letter = "O";
		}

		bingo.num = Math.floor(Math.random() * 100) + 1;
		bingo.called = bingo.letter + bingo.num.toString();
		console.log("Does anyone have " + bingo.called + "?")
	},

	check: function(){
		var column = undefined
		if (bingo.letter == "B"){
			column = bingo.board[0];
		} else if (bingo.letter == "I") {
			column = bingo.board[1];
		} else if (bingo.letter == "N") {
			column = bingo.board[2];
		} else if (bingo.letter == "G") {
			column = bingo.board[3];
		} else if (bingo.letter == "O") {
			column = bingo.board[4];
		}
		var found = false
		for(var i = 0; i < column.length; i++){
			if (column[i] == bingo.num){
				console.log("I have " + bingo.called + "!");
				column[i] = "X";
				found = true;
				break;
			}
		}
		if (found == false){
			console.log("I don't have that space.");
		}
	},

	show_board: function(){
		for (var i = 0; i < bingo.board.length; i++){
			console.log(bingo.board[i]);
		}
	}
}


bingo.board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

bingo.call();
bingo.check();
bingo.show_board();