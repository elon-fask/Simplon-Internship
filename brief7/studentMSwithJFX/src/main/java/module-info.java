module org.brief7.studentMSwithJFX {
    requires javafx.controls;
    requires javafx.fxml;
	requires java.sql;
	
    opens org.brief7.studentMSwithJFX to javafx.fxml;
    exports org.brief7.studentMSwithJFX;
}
