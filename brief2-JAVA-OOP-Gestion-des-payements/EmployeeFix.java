package brief2_employe;

public class EmployeeFix extends Employe {
    private double salary;
    
	
	public EmployeeFix(String firstName, String lastName,String birth,double salary) {
		super(firstName, lastName,birth);
		this.salary =salary;
	}


	@Override
	public Number calculateSalary() {
		return salary;
	}
	@Override
    public String toString() {
        return String.format("First name:"+ this.getFirstName()+"\nLast name:"+this.getLastName()+"\nDate of birth:"+this.getBirth()+"\nThe salary is "+ this.salary);
    }


	@Override
	public void ShowData() {
     System.out.println("Fixed Employee :First Name :"+this.getFirstName()+"Last Name :"+ this.getLastName()+"Date of birth :"+this.getBirth()+"Salary :"+ this.salary);
	}

}
