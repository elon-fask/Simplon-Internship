package net.javahibernate.usermanagment.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {
	@Id
	@GeneratedValue
	private Integer id;
	private String username;
	private String password;
	
	
	public Admin() {
		super();
	}


	public Admin(Integer id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}


	public Admin(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}


	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}


	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}


	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}


	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}


	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}


	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "Admin [id=" + id + ", username=" + username + ", password=" + password + "]";
	}
	
	

}
