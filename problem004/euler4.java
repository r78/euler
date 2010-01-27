public class euler4 {
	public static void main(String[] args){
		System.out.println(palindrome(999, 100));
	}
	
	private static int palindrome(int top, int floor){
		int max = 0;
		int y, n;
		String n_reversed;
		while (top >= floor) {
			y = top;
			while (y >= floor){
				if (y % 2 == 0) { y--; }
				if (top * y < max) { break; }
				if (top % 11 != 0) { y = y - (y % 11); }
				n = (top * y);
				n_reversed = Integer.toString(n);
				n_reversed = new StringBuffer(n_reversed).reverse().toString();
				if (n == Integer.parseInt(n_reversed)){ max = n; }
				y -= 2;
			}
			top -= 2;
		}
		return max;
	}
}
