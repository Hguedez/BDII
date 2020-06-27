package insertssintomapersona;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Objects;

public class InsertsSintomaPersona {


    public static void main(String[] args) throws SQLException {
        
        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver ());
        String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";
        Connection con = DriverManager.getConnection(oracleUrl, "system", "admin");
        System.out.println("Connected to Oracle database.....");
        
        Integer persona = 1;
        Integer sintomasRandom1;
        Integer sintomasRandom2;
        Integer sintomasRandom3;
        Integer sintomasRandom4;
        Integer sintomasRandom5;
        Integer sintomas[];
	sintomas = new Integer[5];
        Integer id = 1;
        Integer contExterno;
        Integer contInterno;
        Integer numeroSintomas;
        Integer contador;
        String diaString;
        Integer dia = 1;

        while (persona <= 10000){
		sintomasRandom1 = (int) Math.floor(Math.random()*15+1);
		sintomasRandom2 = (int) Math.floor(Math.random()*15+1);
		sintomasRandom3 = (int) Math.floor(Math.random()*15+1);
		sintomasRandom4 = (int) Math.floor(Math.random()*15+1);
		sintomasRandom5 = (int) Math.floor(Math.random()*15+1);
		sintomas[0] = sintomasRandom1;
		sintomas[1] = sintomasRandom2;
		sintomas[2] = sintomasRandom3;
		sintomas[3] = sintomasRandom4;
		sintomas[4] = sintomasRandom5;
		contExterno = 0;
		contInterno = 0;
               
		
                while(contExterno < 5) {
			while(contInterno < 5) {
				contInterno++;
				if(contInterno == 5)
					break;
	
				if(contExterno >= 1) {
					if(sintomas[1] == sintomas[0]){
						sintomas[1] = (int) Math.floor(Math.random()*15+1);
						contInterno--;
					}
					else if ((sintomas[2] == sintomas[1]) || (sintomas[2] == sintomas[0])) {
						sintomas[2] = (int) Math.floor(Math.random()*15+1);
						contInterno--;
					}
					else if ((sintomas[3] == sintomas[2]) || (sintomas[3] == sintomas[1]) || (sintomas[3] == sintomas[0])) {
						sintomas[3] = (int) Math.floor(Math.random()*15+1);
						contInterno--;
					}
					else if ((sintomas[4] == sintomas[3]) || (sintomas[4] == sintomas[2]) || (sintomas[4] == sintomas[1]) || (sintomas[4] == sintomas[0])) {
						sintomas[4] = (int) Math.floor(Math.random()*15+1);
						contInterno--;
					}	
				}
			}
			contExterno++;
			contInterno = contExterno;
		}
                contador = 0;
                numeroSintomas  = (int) Math.floor(Math.random()*6);
              
                 
                while (contador < numeroSintomas){
                    diaString = Integer.toString(dia);   
                    if (dia <= 9){
                        diaString = "0"+diaString;
                    }
                    
                    PreparedStatement pstmt = con.prepareStatement("INSERT INTO Persona_Sintoma (codigo_persona_sintoma, fecha_sintoma, fk_sintoma, fk_persona) values ("+id+", TO_DATE('2020-05-"+diaString+"', 'YYYY-MM-DD'), "+sintomas[contador]+", "+persona+")");
                    pstmt.execute(); 
                    pstmt.close();
                    contador++;
                    id++;
                    dia++;
                    if (dia == 32){
                        dia = 1;
                    }
                }
            contInterno = 0;
            contExterno = 0;
            persona++;
        }
        con.close();
        
        
        
    }
}
