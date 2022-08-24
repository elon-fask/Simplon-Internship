package org.brief7.studentMSwithJFX;

import java.io.IOException;
import javafx.fxml.FXML;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

public class SecondaryController {
	@FXML
	private TextField idStudent;
	@FXML
	private TextField FName;
	@FXML
	private TextField LName;
	@FXML
	private TextField email;
	@FXML 
	private TextField Adresse;
	@FXML 
	private TextField contact;
	
	@FXML
	private Label lavel;
	
	@FXML
	private TableView<student> table;
	
	@FXML
	private TableColumn<student, Integer> IdStudent;
	@FXML
	private TableColumn<student, String> FirstName;
	@FXML
	private TableColumn<student, String> LastName;
	@FXML
	private TableColumn<student, String> Email;
	@FXML
	private TableColumn<student, String> adresse;
	@FXML
	private TableColumn<student, String> Contact;	
	
	student emp;

/*	
	Connection con=null;
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	
	
	public void updateStudent(ActionEvent ae){
		emp=new student();
		emp.setIdStudent(Integer.parseInt(idStudent.getText()));
		emp.setFName(FName.getText());
		emp.setDepartment(dept.getText());
		emp.setMobileNo(mobNo.getText());
		emp.setSalary(Float.parseFloat(salary.getText()));
		
		if(emp.getContact().length()<13 || emp.getContact().length()>13){
			lavel.setText("please enter correct mobile No");
			return;
		}
		
		try {
			con=ConnectDB.getConnection();
			String sql="INSERT INTO students (idStudent=?,fname=?,lname=?,email=?,adresse=?,contact=?) VALUES(?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,emp.getIdStudent());
			pstmt.setString(2,emp.getFName());
			pstmt.setString(3,emp.getLName());
			pstmt.setString(4, emp.getEmail());
			pstmt.setString(5, emp.getAdresse());
			pstmt.setString(6, emp.getContact());
			rs=pstmt.executeQuery();
			if(rs.next()){
				lavel.setText("Update Sucessfully.");
				IdStudent.setCellValueFactory(new PropertyValueFactory<student, Integer>("idStudent"));
				FirstName.setCellValueFactory(new PropertyValueFactory<student, String>("firstName"));
				LName.setCellValueFactory(new PropertyValueFactory<student, String>("lastName"));
				Email.setCellValueFactory(new PropertyValueFactory<student, String>("email"));
				Adresse.setCellValueFactory(new PropertyValueFactory<student, String>("adresse"));
				Contact.setCellValueFactory(new PropertyValueFactory<student, String>("contact"));

				ObservableList<Employee> data = FXCollections.observableArrayList(
				         new Employee(emp.getEid(),emp.getName(),emp.getDepartment(),emp.getSalary(),emp.getMobileNo())
				);
					
					table.getItems().addAll(data);	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
	*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	public void updateStudent(ActionEvent ae){
		
		emp=new student();
		emp.setIdStudent(Integer.parseInt(idStudent.getText()));
		emp.setFName(FName.getText());
		emp.setLName(LName.getText());
		emp.setEmail(email.getText());
		emp.setAdresse(Adresse.getText());
		emp.setContact(contact.getText());
		
		if(emp.getContact().length()<13 || emp.getContact().length()>13){
			lavel.setText("please enter correct mobile No");
			return;
		}
		String SQL="INSERT INTO students (idStudent=?,fname=?,lname=?,email=?,adresse=?,contact=?) VALUES(?,?,?,?,?,?)";
		try (
			Connection connection=ConnectDB.getConnection();
			PreparedStatement pstmt=connection.prepareStatement(SQL);
			ResultSet rs = pstmt.executeQuery() ;
				){
			
			pstmt.setInt(1, emp.getIdStudent());
			pstmt.setString(2,emp.getFName());
			pstmt.setString(3,emp.getLName());
			pstmt.setString(4,emp.getEmail());
			pstmt.setString(5, emp.getAdresse());
			pstmt.setString(6, emp.getContact());

            if(rs.next()){
				lavel.setText("Update Sucessfully.");
				IdStudent.setCellValueFactory(new PropertyValueFactory<student, Integer>("idStudent"));
				FirstName.setCellValueFactory(new PropertyValueFactory<student, String>("FirstName"));
				LastName.setCellValueFactory(new PropertyValueFactory<student, String>("LastName"));
				Email.setCellValueFactory(new PropertyValueFactory<student, String>("Email"));
				adresse.setCellValueFactory(new PropertyValueFactory<student, String>("Adresse"));
				Contact.setCellValueFactory(new PropertyValueFactory<student, String>("Contact"));

				ObservableList<student> data = FXCollections.observableArrayList(
				         new student(emp.getIdStudent(),emp.getFName(),emp.getLName(),emp.getEmail(),emp.getAdresse(),emp.getContact())
				);
					table.getItems().addAll(data);	
					
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
