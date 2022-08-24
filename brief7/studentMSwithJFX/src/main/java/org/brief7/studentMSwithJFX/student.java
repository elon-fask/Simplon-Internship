package org.brief7.studentMSwithJFX;

public class student {
	private int idStudent;
	private String firstName;   // >>>>>>>>>> First Name 
	private String lastName;   // >>>>>>>>>> Last Name
	private String email;   
	private String adresse; 
	private String contact;
	
	public student(int idStudent, String firstName, String lastName, String email, String adresse, String contact) {
		super();
		this.idStudent = idStudent;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.adresse = adresse;
		this.contact = contact;
	}
	public student() {
		super();
	}
	public int getIdStudent() {
		return idStudent;
	}
	public void setIdStudent(int idStudent) {
		this.idStudent = idStudent;
	}
	
	public String getFName() {
		return firstName;
	}
	public void setFName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLName(){
		return lastName;
	}
	public void setLName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email; 
	}
	
	public String getAdresse () {
		return adresse;
	}
	public void setAdresse (String adresse) {
		this.adresse = adresse;
	}
	
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	@Override
	public String toString() {
		return "student [idStudent=" + idStudent + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", adresse=" + adresse + ", contact=" + contact + "]";
	}
}
