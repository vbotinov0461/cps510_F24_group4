module com.jobbankdb {
    requires javafx.controls;
    requires javafx.fxml;

    opens com.jobbankdb to javafx.fxml;
    exports com.jobbankdb;
}
