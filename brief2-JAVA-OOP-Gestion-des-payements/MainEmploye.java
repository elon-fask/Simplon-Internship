package brief2_employe;
//import brief2_employe.Employe;
import java.util.Scanner;

public class MainEmploye {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String nm,ln,d;
		double s,nmV,nmH,cms,tariF;
		
		// insert your data 		
		System.out.println("Enter ur  first name");
		nm =sc.nextLine();
		System.out.println("Enter ur  last name");
		ln =sc.nextLine();
		System.out.println("Enter ur  date of birth");
		d =sc.nextLine();
		
		
		String ef = "Atman", efl = "Boulaajaili"; //employeeFix ==== ef=empoyeefix ==== efl= employee last name 
		String ec = "Maryam", ecl = "Blossom"; //employeeCommission ==== ecl= employee last name 
		String eh = "Elon", ehl = "Musk";//employeeHour ===== ehl= employee last name 

		
		
		// Calling the salary of the fixed Employee Salary :
		if ( nm.equals(ef) && ln.equals(efl) ) {
			EmployeeFix emF = new EmployeeFix(nm, ln, d,2000); 	
			System.out.println(emF);
			
		
		//	Calling the Salary of the Employee with Commission :  
		} else if(nm.equals(ec)&& ln.equals(ecl)) {
				System.out.println("Enter sales number : ");
				nmV =sc.nextDouble();
				EmployeCommission emC = new EmployeCommission(nm, ln, d, 1000, nmV, 0.5); 
				System.out.println(emC);
			}

		// Calling the Salary of the worked Hour Employee :
		else if (nm.equals(eh) && ln.equals(ehl)) {
			System.out.println("Enter Worked Hours : ");
			nmH =sc.nextDouble();
			System.out.println("Enter your Tarif : ");
			tariF =sc.nextDouble();
			EmployeHoraire emH = new EmployeHoraire(nm, ln, d, nmH, tariF); 
			System.out.println(emH);
			if (nmH>200 ) {
				System.out.println("Worked Hour must be inferior than 200h !!!");
			} 
			else if (tariF < 20) {
					System.out.println(" Tarif must be superior than 20dh !!!");
				}
		} else {
			System.out.println("Please Your Name does not exist and/or your birthday dosen't match !!!!");
		}
		
				
		sc.close();
}
}
