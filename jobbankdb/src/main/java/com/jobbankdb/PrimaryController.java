package com.jobbankdb;
import java.io.IOException;
import javafx.fxml.FXML;

public class PrimaryController {
    
    
    
    @FXML
    private void switchToSecondary() throws IOException {//Switches to 2ndary view
        App.setRoot("secondary");
    }
}
