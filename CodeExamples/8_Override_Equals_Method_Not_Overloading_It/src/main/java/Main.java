public class Main {
    public static void main(String[] args) {
        Employee employee_1 = new Employee();
        Employee employee_2 = new Employee();
        employee_1.employeeId = 101;
        employee_2.employeeId = 101;

        if (employee_1.equals(employee_2)) {
            System.out.println("Same");
        }else {
            System.out.println("Not the same");
        }
    }
}
