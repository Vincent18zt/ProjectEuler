import java.util.HashSet;

/**
 * Multiples of 3 and 5 java solutions for https://projecteuler.net/problem=1
 * 
 * @author vincent
 */
public class ProblemOne {
    public static void main(String[] args) {
        HashSet<Integer> nums = new HashSet<>();
        int sum = 0;
        for (int i = 0; i < 1000; i++) {
            if ((i % 3 == 0 || i % 5 ==0 ) && !nums.contains(i)) {
                sum += i;
            }
        }
        System.out.println("The answer is:" + sum);
    }
}