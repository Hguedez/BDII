package blobs;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.io.*; 
import java.sql.*; 
import java.util.*; 

public class Try2 {
    public static void main(String args[]) throws Exception{
        
        
        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver ());
        String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";
        Connection con = DriverManager.getConnection(oracleUrl, "system", "admin");
        System.out.println("Connected to Oracle database.....");
        
        Integer referencia = 0;  //Sumar de 1000 en 1000
        Integer contador = 1;    //Sumar de 1000 en 1000
        Integer pictureNumber = 1;
        
        while(contador <= (referencia+1000)) {
            System.out.println("ENTRO 1"); 
            String pictureString = Integer.toString(pictureNumber);       
            
            PreparedStatement pstmt = con.prepareStatement("UPDATE persona SET foto_persona = ? where codigo_persona ="+contador);

            InputStream in = new FileInputStream("C:\\Users\\Victor Vieira\\Documents\\7mo-8vo Semestre\\Bases II\\Proyecto\\FOTOS PERSONAS\\fotom"+pictureString+".jpg");
            pstmt.setBlob(1, in);
            pstmt.execute();
            pstmt.close();
            
            System.out.println("ENTRO 2"); 
            
            pictureNumber++; 
            contador++;
            
            if (pictureNumber == 11){
                pictureNumber = 1;
            }
        }
        con.close();
    }
}
