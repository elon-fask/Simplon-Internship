package domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "employees")
@EntityListeners(AuditingEntityListener.class)

public class Employee {
	@Id
	@Column(name = "id", columnDefinition = "serial")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "firstname") 
	private String firstName;
	@Column(name = "lastname")  
	private String lastName;
	@Column(name = "email")  
	private String email;
	@Column(name = "adresse")  
	private String adresse;
	@Column(name = "contact")  
	private String contact;
	
	
	public Employee() {
		super();
	}
	
	public Employee(String firstname, String lastname, String email, String adresse, String contact) {
		super();
		this.firstName = firstname;
		this.lastName = lastname;
		this.email = email;
		this.adresse = adresse;
		this.contact = contact;
	}
	
	public Employee(Integer id, String firstname, String lastname, String email, String adresse, String contact) {
		super();
		this.id = id;
		this.firstName = firstname;
		this.lastName = lastname;
		this.email = email;
		this.adresse = adresse;
		this.contact = contact;
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
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
		return "Employee [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", adresse=" + adresse + ", contact=" + contact + "]";
	}
	
	

}
