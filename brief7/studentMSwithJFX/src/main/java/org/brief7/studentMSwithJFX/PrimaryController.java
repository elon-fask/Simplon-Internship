package org.brief7.studentMSwithJFX;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;

public class PrimaryController implements srcDAO  {
	
		@FXML
		private TextField idStudent;
		@FXML
		private TextField firstName;
		@FXML
		private TextField lastName;
		
		@FXML 
		private TextField id;
		 
		
		@FXML
		private Label lavel;
		
		@FXML
		private TableView<student> table;
		
		@FXML
		private TableColumn<student, String> Id;
		@FXML
		private TableColumn<student, String> FirstName;
		@FXML
		private TableColumn<student, String> LastName;
		@FXML
		private TableColumn<student, String> Email;
		@FXML
		private TableColumn<student, String> Adresse;
		@FXML
		private TableColumn<student, String> Contact;
		

		
		
		student emp;
		
		
		// create table employee ( id number,name varchar2(15),department varchar2(15),mobileNo varchar2(10),salary number);

		/*
		public void register(ActionEvent ae){
			
			emp=new student(0, null, null, null, null, null);
			emp.setIdStudent(Integer.parseInt(idStudent.getText()));
			emp.setFName(firstName.getText());
			emp.setLName(LastName.getText());
			//emp.setSalary(Float.parseFloat(salary.getText()));
			//emp.setEmail(email.getText());   
			
			if(emp.getMobileNo().length()<10 || emp.getMobileNo().length()>10){
				lavel.setText("please enter correct mobile No");
				return;
			}
			
			try {
				con=ConnectDB.getConnection();
				
				  String sql="insert into students(id_student, fname, lname, email, adresse, contact) Values (?,?,?,?,?,?)";
				 
				
				String sql="select id_Student, fname, lname from student";
				pstmt=con.prepareStatement(sql);
				((student) pstmt).setIdStudent(Integer.parseInt(idStudent.getText()));;
				pstmt.setString(2,emp.getFName());
				pstmt.setString(3,emp.getLName());
				
				  pstmt.setString(4,emp.getEmail()); 
				  pstmt.setString(5, emp.getAdresse());
				  pstmt.setString(6, emp.getContact());
				 
				
				rs=pstmt.executeQuery();
				if(rs.next()){
					lavel.setText("Register Sucessfully.");
					Id.setCellValueFactory(new PropertyValueFactory<student, String>("IdStident"));
					FirstName.setCellValueFactory(new PropertyValueFactory<student, String>("FirstName"));
					LastName.setCellValueFactory(new PropertyValueFactory<student, String>("department"));
					Email.setCellValueFactory(new PropertyValueFactory<student, String>("salary1"));
					Adresse.setCellValueFactory(new PropertyValueFactory<student, String>("mobile"));
					Contact.setCellValueFactory(new PropertyValueFactory<student, String>("mobile"));

					ObservableList<student> data = FXCollections.observableArrayList(
					         new student(emp.getIdStudent(),emp.getFName(),emp.getLName(), emp.getAdresse(), emp.getEmail(), emp.getContact())
					);
						
					table.getItems().addAll(data);

					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			System.out.println(emp.getContact()+"...........");
		}
		*/
		
		/*
		 public student getStudentById(Integer Id_Student) {
		student students = null;
		String SQL = "SELECT * 	FROM students WHERE id_student=?";
		try(
				Connection connection = connectDB.getConnection();
				PreparedStatement p = connection.prepareStatement(SQL)
			) {
			p.setInt(1, Id_Student);
			ResultSet rs = p.executeQuery();
			if (rs.next()) {
				int id_Student = rs.getInt("id_Student");
				String fName = rs.getString("fName");
				String lName = rs.getString("lName");
				String email = rs.getString("email");
				String adresse = rs.getString("adresse");
				String contact = rs.getString("contact");
			
				students = new student();
				students.setFName(fName);
				
				
			}
		
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	} */
		
		
		public List<student> showAll(ActionEvent ae){
				try {
						Connection connection = ConnectDB.getConnection();
						String sql="select * from students";

						PreparedStatement pstmt = connection.prepareStatement(sql);
								{
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
				    	//ObservableList<student> list = showAll();
						Id.setCellValueFactory(new PropertyValueFactory<student, String>("idStudent"));
						FirstName.setCellValueFactory(new PropertyValueFactory<student, String>("fName"));
						LastName.setCellValueFactory(new PropertyValueFactory<student, String>("lName"));
						Email.setCellValueFactory(new PropertyValueFactory<student, String>("email"));
						Adresse.setCellValueFactory(new PropertyValueFactory<student, String>("adresse"));
						Contact.setCellValueFactory(new PropertyValueFactory<student, String>("contact"));

						ObservableList<student> data = FXCollections.observableArrayList(
						         new student(rs.getInt("idStudent"),rs.getString("fName"),rs.getString("lName"),rs.getString("email"),rs.getString("adresse"),rs.getString("Contact"))
						);
						table.getItems().addAll(data);
									}
								}
				} catch (SQLException e) {
				e.printStackTrace();}
				return null;
			}

		public void deleteStudent(ActionEvent ae){
			try {
					Connection connection = ConnectDB.getConnection();
					String SQL="DELETE FROM students WHERE idStudent=?";
					
					PreparedStatement pstmt = connection.prepareStatement(SQL);
					{
				pstmt.setInt(1, Integer.parseInt(id.getText()));
	            int executeUpdate = pstmt.executeUpdate();
				
				//ResultSet rs=pstmt.executeQuery();
				if(executeUpdate == 1){
					lavel.setText("Record deleted ");
				}else{
					lavel.setText("please check student id");
					}
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}
		public void update(ActionEvent ae) throws IOException{
			Stage primaryStage= new Stage();
			Parent root =FXMLLoader.load(getClass().getResource("Secondary.fxml"));
//			Parent root = FXMLLoader.load(getClass().getResource(arg0))
			Scene scene = new Scene(root);
			/*
			 * scene.getStylesheets().add(getClass().getResource("application.css").
			 * toExternalForm());
			 */
			primaryStage.setScene(scene);
			primaryStage.show();
		}
/*
		@Override
		public student searchById(int IdStudent) {
			student students = null;
			String SQL = "SELECT * 	FROM students WHERE idstudent=?";
			try(
					Connection connection = ConnectDB.getConnection();
					PreparedStatement p = connection.prepareStatement(SQL)
				) {
				p.setInt(1, IdStudent);
				ResultSet rs = p.executeQuery();
				if (rs.next()) {
					int idStudent = rs.getInt("idStudent");
					String fName = rs.getString("fName");
					String lName = rs.getString("lName");
					String email = rs.getString("email");
					String adresse = rs.getString("adresse");
					String contact = rs.getString("contact");
				
					students = new student();
					students.setFName(fName);
				}
			
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return null;
		}
		*/

		@Override
		public void createStudent(org.brief7.studentMSwithJFX.student student) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public org.brief7.studentMSwithJFX.student updateByName(String fName, String lName) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public void updateStudentEmailById(String newEmail, int idStudent) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void deleteStudentById(Integer IdStudent) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public List<org.brief7.studentMSwithJFX.student> getAllStudentInfo() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public List<org.brief7.studentMSwithJFX.student> showAll() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public student getStudentById(int IdStudent) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public student searchById(int IdStudent) {
			// TODO Auto-generated method stub
			return null;
		}
}