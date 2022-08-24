package brief2_employe;
//import java.util.Date;

public abstract class Employe {
	
	
	private String firstName;
    private String lastName;
    private String birth;
    
    public Employe(String fn , String ln,String b ) {
    	firstName=fn;
    	lastName=ln;
    	birth=b;
    	
    }
  
   
    
    public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

    
    public String getFirstName()
    {
    	return firstName;
    }
    
    public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}

	public abstract Number calculateSalary();
	 
	@Override
	public String toString() {
		return "Employe [firstName=" + firstName + ", lastName=" + lastName +"birth="+birth+ "]";
	}   
	public abstract void ShowData();

}
