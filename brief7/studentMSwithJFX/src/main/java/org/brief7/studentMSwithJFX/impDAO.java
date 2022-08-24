/*package org.brief7.studentMSwithJFX;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class impDAO implements srcDAO {

	
	@Override
	public void createStudent(student student) {
		String SQL = "INSERT INTO students(id_student,fname,lname,email,adresse,contact)VALUES(?,?,?,?,?,?)";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement p = connection.prepareStatement(SQL)
				){
			p.setInt(1, student.getIdStudent());
			p.setString(1, student.getFName());
			p.setString(3, student.getLName());
			p.setString(4, student.getEmail());
			p.setString(5, student.getAdresse());
			p.setString(6, student.getContact());
			
			int executeUpdate = p.executeUpdate();
			
			if(executeUpdate == 1) {
				System.out.print("Student Added Successfully !!! ");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}	
	
	}


	@Override
	public student getStudentById(Integer IdStudent) {
		student student = null;
		String SQL = "SELECT * 	FROM students WHERE id_student=?";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement p = connection.prepareStatement(SQL)
			) {
			p.setInt(1, IdStudent);
			ResultSet rs = p.executeQuery();
			if (rs.next()) {
				int idStudent = rs.getInt("id_Student");
				String fName = rs.getString("fName");
				String lName = rs.getString("lName");
				String email = rs.getString("email");
				String adresse = rs.getString("adresse");
				String contact = rs.getString("contact");
			
				student = new student();
				student.setFName(fName);
				
				
			}
		
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

	@Override
	public void updateStudentEmailById(String newEmail, Integer Student) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteStudentById(Integer IdStudent) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<student> getAllStudentInfo() {
		List<student> studentList = new ArrayList<>();
		String SQL = "Select * FROM students";
		try(
				Connection connection = ConnectDB.getConnection();
				PreparedStatement p = connection.prepareStatement(SQL)
			){
			
			ResultSet rs = p.executeQuery();
			if (rs.next()) {
				int idStudent = rs.getInt("id_student");
				String fName = rs.getString("fName");
				String lName = rs.getString("lName");
				String email = rs.getString("email");
				String adresse = rs.getString("adresse");
				String contact = rs.getString("contact");
				
				student student = new student();
				student.setFName(fName);
				student.setLName(lName);
				student.setEmail(email);
				student.setAdresse(adresse);
				student.setContact(contact);
				
				studentList.add(student);
			}
			
		} catch (Exception e) {
			e.printStackTrace();	
		}
		return studentList;
	}


}
	*/
