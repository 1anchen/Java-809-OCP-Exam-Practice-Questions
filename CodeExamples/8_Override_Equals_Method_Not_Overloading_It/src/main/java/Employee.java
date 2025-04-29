
public class Employee {
    public int employeeId;

    public String employeeName;

    public int hashCode(){
        return employeeId;
    }

    public boolean equals(Object otherEmployee){
        System.out.println("Inside the Object equals method");
        if(otherEmployee instanceof Employee){
           return this.employeeId == ((Employee) otherEmployee).employeeId;
        }

        return false;
    }

    public boolean equals(Employee employee){
        System.out.println("Inside the Employee equals method");
        return this.employeeId == employee.employeeId;
    }
}
