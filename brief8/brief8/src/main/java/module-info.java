module org.example {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;

    opens org.brief8 to javafx.fxml;
    exports org.brief8.models;
    exports org.brief8.dao;
    exports org.brief8.controller;
}
