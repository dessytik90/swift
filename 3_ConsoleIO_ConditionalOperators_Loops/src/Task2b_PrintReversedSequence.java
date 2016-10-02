
import java.util.Scanner;


public class Task2b_PrintReversedSequence {
    public static void main(String [] args){
      Scanner sc= new Scanner(System.in);
      System.out.print("Enter a number to reverse:");
      int num=sc.nextInt();
    int original=num;
    int reverse=0;
    int remainder;
    while (original !=0){
        remainder=original %10;
        reverse=reverse*10+remainder;
        original=original/10;
        
    }
      System.out.println("The reverse number is:"+ reverse);
    }
}
