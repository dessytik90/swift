
import java.util.Scanner;

public class CalculatorClient {

    public static void main(String[] args ) {

        Calculator calculator = new Calculator("", 0, 0);
        Scanner sc = new Scanner(System.in);
        String calc;

        do {
            calc = sc.next();
            if (calc.equals(" END")) {
                break;
            } else {
                calculator.operation = calc;
                calculator.a = sc.nextDouble();
                calculator.b = sc.nextDouble();
                System.out.printf("%.3f\n", calculator.switchCase());
            }
        } while (!calc.equals("END"));
    }
}    


  
    

