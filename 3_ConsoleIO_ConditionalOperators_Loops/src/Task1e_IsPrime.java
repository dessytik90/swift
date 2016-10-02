
import java.util.Scanner;


public class Task1e_IsPrime {
      public static void main(String [] args){
          int temp;
          boolean isPrime=true;
         Scanner sc= new Scanner (System.in);
        int num=sc.nextInt();
        for(int i=2; i<=num/2; i++){
            temp=num%i;
            if(temp==0){
                isPrime=false;
                break;
            }
        }
        if(isPrime)
            System.out.println(num + "true");
        else
            System.out.println(num + "false");
            
        
        
               
               
                
                
        
        
        
    }
    
}
