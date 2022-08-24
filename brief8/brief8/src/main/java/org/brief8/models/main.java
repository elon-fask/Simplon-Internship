package org.brief8.models;

import java.io.File;
import java.net.URL;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.stage.Stage;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;


/**
* @author Atman Boulaajaili
* https://github.com/Elon-Fask/
*/

public class main extends Application {
    @Override
    public void start(Stage primaryStage) throws Exception {
        try {
        	URL url = new File("src/main/resources/org/brief8/Ui.fxml").toURI().toURL();
        	
            Parent root = FXMLLoader.load(url);
            Scene scene = new Scene(root);
            primaryStage.setTitle("Brit Ndir");

           /*
            scene.getStylesheets().add(getClass().getResource("styleLogin.css").
            toExternalForm());
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
