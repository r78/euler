import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.lang.Math;
import java.text.DecimalFormat;

public class euler5{
	public static void main(String[] args){
		DecimalFormat formatter = new DecimalFormat("#0");
		double lcm = lcm(factorsFrequency(range(1, 20)));
		System.out.println(formatter.format(lcm));
	}

	//get the factors of a number
	private static ArrayList<Integer> factors(int n){
        ArrayList<Integer> factors = new ArrayList<Integer>();
		if (n == 1){
			factors.add(1);
			return factors;
		}
		int x = 2;
		while (x <= n){
			while (n % x == 0){
				factors.add(x);
				n = n / x;
			}
			x++;
		}
		return factors;
	}

	//get a hash with all factors and their greatest power
	private static HashMap<Integer, Integer> factorsFrequency(ArrayList<Integer> nums){
		HashMap<Integer, Integer> pfactors = new HashMap<Integer, Integer>();
		Iterator<Integer> itr = nums.iterator();
		while (itr.hasNext()) {
			Integer x = itr.next();
			ArrayList<Integer> num_factors = factors(x);
			Iterator<Integer> nfItr = num_factors.iterator();
			while (nfItr.hasNext()) {
				Integer factor = nfItr.next();
				int factorPower = factorFrequency(factor, num_factors); 
				if (pfactors.get(factor) == null){
					pfactors.put(factor, factorPower);
				} else {
					if (pfactors.get(factor) < factorPower){
						pfactors.put(factor, factorPower);
					}
				}
			}
		}
		return pfactors;
	}

	//calculate the LCM
	private static double lcm(HashMap<Integer, Integer> factors){
		double total = 1;
		Iterator<Integer> itr = factors.keySet().iterator();
		while (itr.hasNext()){
			Integer factor = itr.next();
			total *= Math.pow(factor, factors.get(factor));
		}
		return total;
	}

	//build an iterable range
	private static ArrayList<Integer> range(int min, int max){
        ArrayList<Integer> range = new ArrayList<Integer>();
		for (int i = min; i <= max; i++){ range.add(i); }
		return range;
	}

	//get the power of a factor
	private static int factorFrequency(int factor, ArrayList<Integer> num_factors){
		int count = 0;
		Iterator<Integer> itr = num_factors.iterator();
		while (itr.hasNext()) {
			Integer currFactor = itr.next();
			if (factor == currFactor){ count++; }
		}
		return count;
	}
}
