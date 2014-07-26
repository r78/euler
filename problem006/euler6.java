import java.lang.Math;
import java.text.DecimalFormat;

public class euler6{

	public static void main(String[] args){
		int n = 100;
		DecimalFormat formatter = new DecimalFormat("#0");
		System.out.println(formatter.format(square_of_sum(n) - sum_of_squares(n)));
	}

	private static int sum_of_squares(int n){
		return (n * (n + 1) * ((2 * n) + 1)) / 6;
	}
	
	private static double square_of_sum(int n){
		int sum = (n / 2) * (n + 1);
		if (n % 2 != 0) { sum += n ;}
		return Math.pow(sum, 2);
	}
}
