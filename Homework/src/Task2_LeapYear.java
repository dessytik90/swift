
public class Task2_LeapYear {
    public static void main (String[] args) {
        
        int year=2016 ;
        boolean a= year % 4==0;
        boolean b= year % 100 !=0;
        boolean c= year % 400 ==0;
        
      System.out.println((year % 4==0) && (year % 100 !=0) || (year % 400==0));
    }
    
}
