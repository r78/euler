#!/usr/bin/env js
if (!Array.prototype.reduce) {
  Array.prototype.reduce = function(fun /*, initial*/) {
    var len = this.length >>> 0;
    if (typeof fun != "function") { 
		throw new TypeError(); 
	}

    // no value to return if no initial value and an empty array
    if (len == 0 && arguments.length == 1) { 
		throw new TypeError();
	}

    var i = 0;
    if (arguments.length >= 2) {
    	var rv = arguments[1];
    } else {
    	do {
        	if (i in this) {
            	rv = this[i++];
         	 	break;
        	}
        	// if array contains no values, no initial value to return
        	if (++i >= len) { 
				throw new TypeError(); 
			}
    	} while (true);
    }

    for (; i < len; i++) {
    	if (i in this) { 
			rv = fun.call(null, rv, this[i], i, this);
		}
    }

    return rv;
  };
}

function range(n) {
  for (var i = 1; i <= n; i++) { yield i;}
}

function gcd(a, b){
	while (b != 0) {
		var aux = b;
		b = a % b;
		a = aux;
	}
	return a
}

print( [x for (x in range(20))].reduce(function(a, b){ return (a * b) / gcd(a,b); }) );
