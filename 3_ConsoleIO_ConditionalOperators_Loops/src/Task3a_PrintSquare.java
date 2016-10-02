
import java.util.Scanner;

public class Task3a_PrintSquare {
    public static void main(String[]args){
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the side:");
        int len=sc.nextInt();
        int x=0;
        
         while(x++ < len){
             System.out.print("* ");
             
         }
         System.out.println();
           x=0;
           while(x++ <len - 2){
               System.out.print('*');
               int y=0;
               while(y++ < len -2){
                   System.out.print("  ");
               }
               System.out.println(" *");
           }
       x=0;
       while(x++ <len){
           System.out.print("* ");
       }
        
    }    
    
}
