#!/usr/bin/env js
Number.prototype.reverseAsString = function (){
	return this.toString().split("").reverse().join(""); 
}
function palindrome(rtop, rfloor){
	var max = 0;
	while (rtop > rfloor) {
		var y = rtop;
		while (y >= rfloor) {
			if (y % 2 == 0) { y--; }
			if (rtop * y < max) { break; }
			if (rtop % 11 != 0) { y = y - (y % 11); }
			n = (rtop * y);
			if (n.toString() == n.reverseAsString()){ max = parseInt(n); }
			y -= 2;
		}
		rtop -= 2;
	}
	return max;
}

print(palindrome(999, 100));
