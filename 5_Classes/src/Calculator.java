
public class Calculator {

    String operation;
    double a;
    double b;

    Calculator(String operation, double a, double b) {
        this.operation = operation;
        this.a = a;
        this.b = b;

    }

    public double SUM(double a, double b) {
        return a + b;
    }

    public double SUB(double a, double b) {
        return b - a;
    }

    public double MUL(double a, double b) {
        return a * b;

    }

    public double DIV(double a, double b) {
        return a / b;
    }

    public double PER(double a, double b) {
        return (a * b) / 100;

    }

    double switchCase() {
        double result = 0;

        switch (operation) {
            case "SUM":
                result = SUM(a, b);
                break;
            case "SUB":
                result = SUB(a, b);
                break;
            case "MUL":
                result = MUL(a, b);
                break;
            case "DIV":
                result = DIV(a, b);
                break;
            case "PER":
                result = PER(a, b);
                break;
            case "END":
                break;
            default:
                System.out.println("ERROR");
                break;
        }
                return result;
        
    }
}
