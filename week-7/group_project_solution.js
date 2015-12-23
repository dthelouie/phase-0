var list = []
var math = {
	function sum(list){
		var sum = 0;
		for(var i = 0; i < list.length; i++){
			sum = sum + list[i];
		}
		return sum;
	}
	function mean(list){
		var average = sum(list)/list.length;
		return average;
	}
	function median(list){
		list = list.sort( function(a,b) {return a - b;} );
		var half = list.length/2
		if (list.length % 2 == 1){
			return list[half];
		}
		else if (list.length % 2 == 0){
			return (list[half] + list[half - 1])/2.0;
		}
	}
}