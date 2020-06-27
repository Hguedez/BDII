package insertspatologiapersona;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Objects;
import java.util.Random;

public class InsertsPatologiaPersona {

    public static void main(String[] args) throws SQLException {
        
        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver ());
        String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";
        Connection con = DriverManager.getConnection(oracleUrl, "system", "admin");
        System.out.println("Connected to Oracle database.....");
        
        Integer persona = 1;
        Integer numeroPatologias;
        Integer patologia1;
        Integer patologia2;
        Integer contador = 1;
        
        while (persona <= 10000){
            
            numeroPatologias = (int)Math.floor(Math.random()*3);
            
            if (Objects.equals(numeroPatologias, 2)){
                patologia1 = 1;
                patologia2 = 1;
                while (patologia1 == patologia2){
                    patologia1 =  (int)Math.floor(Math.random()*15 + 1);
                    patologia2 =  (int)Math.floor(Math.random()*15 + 1);
                }
                PreparedStatement pstmt = con.prepareStatement("INSERT INTO Persona_Patologia (codigo_persona_patologia, fk_patologia, fk_persona) values ("+contador+", "+patologia1+", "+persona+")");
                pstmt.execute(); 
                pstmt.close();           
                contador++;
                PreparedStatement pstmt1 = con.prepareStatement("INSERT INTO Persona_Patologia (codigo_persona_patologia, fk_patologia, fk_persona) values ("+contador+", "+patologia2+", "+persona+")");
                pstmt1.execute(); 
                pstmt1.close();           
            }
            if (Objects.equals(numeroPatologias, 1)){
                patologia1 =  (int)Math.floor(Math.random()*15 + 1);
                PreparedStatement pstmt = con.prepareStatement("INSERT INTO Persona_Patologia (codigo_persona_patologia, fk_patologia, fk_persona) values ("+contador+", "+patologia1+", "+persona+")");
                pstmt.execute(); 
                pstmt.close();   
            }
            
            contador++;
            persona++;
        }
        con.close();
        
        
        
    }
    
}
