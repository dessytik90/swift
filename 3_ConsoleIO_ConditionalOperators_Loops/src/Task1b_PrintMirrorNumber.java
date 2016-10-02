
import java.util.Scanner;


public class Task1b_PrintMirrorNumber {
    public static void main (String [] args){
        Scanner sc= new Scanner (System.in);
        int n= sc.nextInt();
         int temp=0;
         int mirrorNumber=0;
         
        
        
        while (n >0) {
            temp = n%10;
            mirrorNumber=mirrorNumber * 10 + temp;
            n=n/10;
                  
        }
            System.out.println(mirrorNumber);
         
          
                         
         
          
            
           
            
            
            
        

        
        
    }
}
