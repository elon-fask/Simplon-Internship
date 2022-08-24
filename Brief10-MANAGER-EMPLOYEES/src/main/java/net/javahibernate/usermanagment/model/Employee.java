package net.javahibernate.usermanagment.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


	@Entity
	@Table(name="employee")
	public class Employee {
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name="id_employees")
		private Integer id_employees;
		@Column(name="firstname")
		private String firstname;
		@Column(name="lastname")
		private String lastname;
		@Column(name="email")
		private String email;
		@Column(name="Adress")
		private String Adress;
		@Column(name="Contact")
		private String Contact;
		
		public Employee() {
			super();
		}
		
		public Employee(Integer id_employees, String firstname, String lastname, String email, String adress,
				String contact) {
			super();
			this.id_employees = id_employees;
			this.firstname = firstname;
			this.lastname = lastname;
			this.email = email;
			Adress = adress;
			Contact = contact;
		}

		public Employee(String firstname, String lastname, String email, String adress,
				String contact) {
			super();
			
			this.firstname = firstname;
			this.lastname = lastname;
			this.email = email;
			Adress = adress;
			Contact = contact;
		}

		/**
		 * @return the id_employee
		 */
		public Integer getId_employee() {
			return id_employees;
		}

		/**
		 * @param id_employee the id_employee to set
		 */
		public void setId_employees(Integer id_employees) {
			this.id_employees = id_employees;
		}

		/**
		 * @return the firstname
		 */
		public String getFirstname() {
			return firstname;
		}

		/**
		 * @param firstname the firstname to set
		 */
		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}

		/**
		 * @return the lastname
		 */
		public String getLastname() {
			return lastname;
		}

		/**
		 * @param lastname the lastname to set
		 */
		public void setLastname(String lastname) {
			this.lastname = lastname;
		}

		/**
		 * @return the email
		 */
		public String getEmail() {
			return email;
		}

		/**
		 * @param email the email to set
		 */
		public void setEmail(String email) {
			this.email = email;
		}

		/**
		 * @return the adress
		 */
		public String getAdress() {
			return Adress;
		}

		/**
		 * @param adress the adress to set
		 */
		public void setAdress(String adress) {
			Adress = adress;
		}

		/**
		 * @return the contact
		 */
		public String getContact() {
			return Contact;
		}

		@Override
		public String toString() {
			return "Employee [id_employees=" + id_employees + ", firstname=" + firstname + ", lastname=" + lastname
					+ ", email=" + email + ", Adress=" + Adress + ", Contact=" + Contact + "]";
		}

		/**
		 * @param contact the contact to set
		 */
		public void setContact(String contact) {
			Contact = contact;
		}

	

}
