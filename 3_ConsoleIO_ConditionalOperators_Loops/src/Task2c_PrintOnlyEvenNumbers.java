
import java.util.Scanner;

public class Task2c_PrintOnlyEvenNumbers {
    public static void main(String []args){
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        int limit=5;
        System.out.println("Printing even numbers between 1 and" + limit);
        for (int i=1; i<=limit;i++){
            if(i %2==0){
                System.out.println(i);
            }
        }
    }
}
