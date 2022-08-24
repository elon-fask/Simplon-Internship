package brief2_employe;

public class EmployeCommission extends Employe {
    double salary;
    double sold;
    double cms;
	public EmployeCommission(String firstName, String lastName,String birth, double salary, double sold, double cms) {
		super(firstName, lastName,birth);
		this.salary=salary;
		this.sold=sold;
		this.cms=cms;
	}
	@Override
	public Number calculateSalary() {
		
		return salary+(sold*cms); // cms = Commission / sold = nombre de quantite vendue 
	}
	@Override
    public String toString() {
        return String.format("First name:"+ this.getFirstName()+"\nLast name:"+this.getLastName()+"\nDate of birth:"+this.getBirth()+"\nThe salary is "+calculateSalary() );
    }
	@Override
	public void ShowData() {
		 System.out.println("Commission Employee :First Name :"+this.getFirstName()+"Last Name :"+this.getLastName()+"Date of birth :"+this.getBirth()+"Salary :"+ calculateSalary());
		
	}
}
