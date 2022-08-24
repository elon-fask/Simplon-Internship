package org.brief7.studentMSwithJFX;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.stage.Stage;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;


public class main extends Application {
	@Override
	public void start(Stage primaryStage) throws Exception {
		try {
			Parent root = FXMLLoader.load(getClass().getResource("primary.fxml"));
			Scene scene = new Scene(root);
	        primaryStage.setTitle("Student Management System");

			/*
			 * scene.getStylesheets().add(getClass().getResource("application.css").
			 * toExternalForm());
			 */			
	        primaryStage.setScene(scene);
			primaryStage.show();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
