
public class Main {
    void go(Number number){
        System.out.println("The Number object value is " + number);
    }

    void go(int number){
        System.out.println("The primitive int value is" + number);
    }

    public static void main(String[] args) {
        Main test = new Main();
        Integer i = 1;

        System.out.println("When overloading method is called, what is the correct order? ");

        test.go(i);
        test.go(1);
    }
}
