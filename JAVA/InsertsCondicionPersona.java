package insertscondicionpersona;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Objects;

public class InsertsCondicionPersona {

    public static void main(String[] args) throws SQLException {
        
        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver ());
        String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";
        Connection con = DriverManager.getConnection(oracleUrl, "system", "admin");
        System.out.println("Connected to Oracle database.....");
        
        Integer persona = 1;
        Integer condicion = 1;
        Integer condicion1 = 2;
        Integer sano = 1;
        Integer infectado = 2;
        
        
        while (persona <= 10000){
            
            PreparedStatement pstmt = con.prepareStatement("INSERT INTO Condicion_Persona (codigo_condicion_persona, fecha_condicion, fk_condicion, fk_persona) values ("+persona+", TO_DATE('2020-06-25', 'YYYY-MM-DD'), ?, "+persona+")");
            
            if (Objects.equals(persona, condicion)){
                condicion = condicion+100;              
                pstmt.setInt(1, infectado); 
                pstmt.execute(); 
                pstmt.close();
            }
            else{
                pstmt.setInt(1, sano);
                pstmt.execute(); 
                pstmt.close();             
            }   
            persona++;
        }
        con.close();
    }
    
}
