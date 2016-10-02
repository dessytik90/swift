
import java.util.Scanner;


public class Task3b_PrintZFigure {
    public static void main(String []args){
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter a number:");
        int n=sc.nextInt();
        for(int row=0; row <n; row++){
            for( int column=0; column<n; column++){
                if(row==0 || row==n-1 || column==n-1-row){
                System.out.print("*");
                }
                  else
                    System.out.print(" ");
            }   
            System.out.println();
        }
        
    }
    
    
}
