
import java.util.Scanner;

public class Task2a_PrintSumOfN {
        public static void main(String [] args){
        Scanner sc=new Scanner (System.in);
        System.out.println("Enter a numbers N :");
                int number=sc.nextInt();
                int sum=0;
                int input=number;
             while (input !=0){
                 int lastDigit=input % 10;
                 sum +=lastDigit;
                 input /=10;
             }
                   
        System.out.printf("Sum of digits of number %d is %d", number, sum);
        
                 
              
        
                
                
              
        
        
        
        
     
        
        
  
        
        
        
        
        
       
        
            
        
          
       
        
        
        
        
    }
    
}
