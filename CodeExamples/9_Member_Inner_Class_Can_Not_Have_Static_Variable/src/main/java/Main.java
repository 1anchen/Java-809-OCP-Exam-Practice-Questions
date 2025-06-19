public class Main {

    private int x = 5;
    protected class InnerClass {
        public static final int Y = 10;
        public static int x = 10;
        public void print() {
            System.out.println(x);
        }
    }
    public static void main(String[] args) {
        Main main = new Main();
        Main.InnerClass inner = main.new InnerClass();
        inner.print();
    }
}
