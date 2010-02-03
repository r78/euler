import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.lang.Math;
import java.text.DecimalFormat;

public class euler5{
	public static void main(String[] args){
		System.out.println(range_lcm(1, 20));
	}

	//calculate the GCD
	private static int gcd(int a, int b){
		int aux;
		while (b != 0){
			aux = b;
			b = a % b;
			a = aux;
		}
		return a;
	}

	//calculate the LCM
	private static int lcm(int a, int b){
		return (a * b) / gcd(a, b);
	}

	//get the LCM of a range of numbers
	private static int range_lcm(int min, int max){
		ArrayList<Integer> r = range(min, max);
		Iterator<Integer> itr = r.iterator();
		int x = r.get(0);
		int lcm = 0;
		while (itr.hasNext()) { //get pairs of elements
			Integer y = itr.next();
			if (y == r.get(r.size() - 1)) { break; } //skip the last element
			if (y == r.get(0)) { y = itr.next(); } //skip the first element
			x = lcm(x, y);
			lcm = x;
		}
		return lcm;
	}

	//build an iterable range
	private static ArrayList<Integer> range(int min, int max){
        ArrayList<Integer> range = new ArrayList<Integer>();
		for (int i = min; i <= max; i++){ range.add(i); }
		return range;
	}
}
