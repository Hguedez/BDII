package inserts.bases.pkg2;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class InsertsBases2 {

    public static void main(String[] args) {
        File archivoNombreMasculino1 = null;
        File archivoNombreFemenino1 = null;
        File archivoApellido1 = null; 
        File archivoNombreMasculino2 = null;
        File archivoNombreFemenino2 = null;
        File archivoApellido2 = null;
        File archivoFecha1 = null;
        File archivoDireccion1 = null;
        File archivoApellido3 = null;
        File archivoApellido4  = null;
        File archivoFecha2 = null;
        File archivoDireccion2 = null;
        FileReader frNombreMasculino1 = null, frApellido1 = null, frNombreMasculino2 = null, frApellido2 = null, frFecha1 = null, frDireccion1 = null, frNombreFemenino1 = null, frNombreFemenino2 = null, frApellido3 = null, frApellido4 = null, frFecha2 = null, frDireccion2 = null;
        BufferedReader brNombreMasculino1 = null, brApellido1 = null, brNombreMasculino2 = null, brApellido2 = null, brFecha1 = null, brDireccion1 = null, brNombreFemenino1 = null, brNombreFemenino2 = null, brApellido3 = null, brApellido4 = null, brFecha2 = null, brDireccion2 = null;
        
        Statement s; 
        Connection c; 
        FileInputStream fis; 
        PreparedStatement ps; 
 
        try {
			// Apertura del fichero y creacion de BufferedReader para poder
			// hacer una lectura comoda (disponer del metodo readLine()).
			archivoNombreMasculino1 = new File ("C:\\Users\\Victor Vieira\\Pictures\\nombremasculino2.txt");
			frNombreMasculino1 = new FileReader (archivoNombreMasculino1);
			brNombreMasculino1 = new BufferedReader(frNombreMasculino1);
                                       
                        archivoNombreMasculino2 = new File ("C:\\Users\\Victor Vieira\\Pictures\\nombremasculino3.txt");
			frNombreMasculino2 = new FileReader (archivoNombreMasculino2);
			brNombreMasculino2 = new BufferedReader(frNombreMasculino2);
                        
                        archivoNombreFemenino1 = new File ("C:\\Users\\Victor Vieira\\Pictures\\nombrefemenino2.txt");
			frNombreFemenino1 = new FileReader (archivoNombreFemenino1);
			brNombreFemenino1 = new BufferedReader(frNombreFemenino1);
                        
                        archivoNombreFemenino2 = new File ("C:\\Users\\Victor Vieira\\Pictures\\nombrefemenino3.txt");
			frNombreFemenino2 = new FileReader (archivoNombreFemenino2);
			brNombreFemenino2 = new BufferedReader(frNombreFemenino2);
                        
                        archivoApellido1 = new File ("C:\\Users\\Victor Vieira\\Pictures\\apellidos2.txt");
			frApellido1 = new FileReader (archivoApellido1);
			brApellido1 = new BufferedReader(frApellido1);
                        
                        archivoApellido2 = new File ("C:\\Users\\Victor Vieira\\Pictures\\apellidos1.txt");
			frApellido2 = new FileReader (archivoApellido2);
			brApellido2 = new BufferedReader(frApellido2);
                        
                        archivoApellido3 = new File ("C:\\Users\\Victor Vieira\\Pictures\\apellidos4.txt");
			frApellido3 = new FileReader (archivoApellido3);
			brApellido3 = new BufferedReader(frApellido3);
                        
                        archivoApellido4 = new File ("C:\\Users\\Victor Vieira\\Pictures\\apellidos3.txt");
			frApellido4 = new FileReader (archivoApellido4);
			brApellido4 = new BufferedReader(frApellido4);
                        
                        archivoFecha1 = new File ("C:\\Users\\Victor Vieira\\Pictures\\fechas1.txt");
			frFecha1 = new FileReader (archivoFecha1);
			brFecha1 = new BufferedReader(frFecha1);
                        
                        archivoFecha2 = new File ("C:\\Users\\Victor Vieira\\Pictures\\fechas2.txt");
			frFecha2 = new FileReader (archivoFecha2);
			brFecha2 = new BufferedReader(frFecha2);
                       
                        archivoDireccion1 = new File ("C:\\Users\\Victor Vieira\\Pictures\\direccion1.txt");
			frDireccion1 = new FileReader (archivoDireccion1);
			brDireccion1 = new BufferedReader(frDireccion1);
                        
                        archivoDireccion2 = new File ("C:\\Users\\Victor Vieira\\Pictures\\direccion2.txt");
			frDireccion2 = new FileReader (archivoDireccion2);
			brDireccion2 = new BufferedReader(frDireccion2);
                        
                        
                        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver ());
                        //Getting the connection
                        String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";
                        Connection con = DriverManager.getConnection(oracleUrl, "system", "admin");
                        System.out.println("Connected to Oracle database.....");
			

                        // Lectura del fichero
			System.out.println("Leyendo el contenido del archivo.txt");
                        
			String nombremasculino1;
                        String nombremasculino2;
                        String nombrefemenino1;
                        String nombrefemenino2;
                        String apellido1;
                        String apellido2;
                        String apellido3;
                        String apellido4;
                        String fecha1;
                        String fecha2;
                        String direccion1;
                        String direccion2;
                        String generoF = "F";
                        String generoM = "M";

                        Integer contador = 2001;
                        Integer lugar = 21;
                        Integer cont = 3001;
                        
			while(((nombremasculino1=brNombreMasculino1.readLine())!=null) && ((apellido1=brApellido1.readLine())!=null) && ((apellido2=brApellido2.readLine())!=null) && ((apellido3=brApellido3.readLine())!=null) && ((apellido4=brApellido4.readLine())!=null) && ((nombremasculino2=brNombreMasculino2.readLine())!=null) && ((fecha1=brFecha1.readLine())!=null) && ((fecha2=brFecha2.readLine())!=null) && ((direccion1=brDireccion1.readLine())!=null) && ((direccion2=brDireccion2.readLine())!=null) && ((nombrefemenino2=brNombreFemenino2.readLine())!=null) && ((nombrefemenino1=brNombreFemenino1.readLine())!=null)){

                            //System.out.println("ENTRO 1"); 
                            
                            PreparedStatement pstmt = con.prepareStatement("INSERT INTO Persona (codigo_persona, genero, datos_basicos, direccion_persona, fk_lugar) values ("+contador+",'M', datos_basicos_personas(datos_basicos_personas.validar_primer_nombre(?), datos_basicos_personas.validar_segundo_nombre(?), datos_basicos_personas.validar_primer_apellido(?), datos_basicos_personas.validar_segundo_apellido(?), datos_basicos_personas.validar_fecha_nacimiento(TO_DATE(?, 'YYYY-MM-DD'))), complemento_direccion(?), "+lugar+")"); 
                            PreparedStatement pstmt1 = con.prepareStatement("INSERT INTO Persona (codigo_persona, genero, datos_basicos, direccion_persona, fk_lugar) values ("+cont+",'F', datos_basicos_personas(datos_basicos_personas.validar_primer_nombre(?), datos_basicos_personas.validar_segundo_nombre(?), datos_basicos_personas.validar_primer_apellido(?), datos_basicos_personas.validar_segundo_apellido(?), datos_basicos_personas.validar_fecha_nacimiento(TO_DATE(?, 'YYYY-MM-DD'))), complemento_direccion(?), "+lugar+")"); 
                            
                            //System.out.println("ENTRO 2"); 
                            
                            pstmt.setString(1, nombremasculino1); 
                            pstmt.setString(2, nombremasculino2);
                            pstmt.setString(3,apellido1);
                            pstmt.setString(4,apellido2);
                            pstmt.setString(5,fecha1);
                            pstmt.setString(6,direccion1);
                            
                            //System.out.println("ENTRO 3"); 
                            
                            pstmt1.setString(1, nombrefemenino1); 
                            pstmt1.setString(2, nombrefemenino2);
                            pstmt1.setString(3,apellido3);
                            pstmt1.setString(4,apellido4);
                            pstmt1.setString(5,fecha2);
                            pstmt1.setString(6,direccion2);
                            
                            
                            //System.out.println("ENTRO 4"); 
                            
                            if (contador == 100){
                                lugar=22;
                            }
                            if (contador == 200){
                                lugar=23;
                            }
                            if (contador == 300){
                                lugar=24;
                            }
                            if (contador == 400){
                                lugar=25;
                            }
                            if (contador == 500){
                                lugar=26;
                            }
                            if (contador == 600){
                                lugar=27;
                            }
                            if (contador == 700){
                                lugar=28;
                            }
                            if (contador == 800){
                                lugar=29;
                            }
                            if (contador == 900){
                                lugar=30;
                            }
                            
                            //System.out.println("ENTRO 5"); 
                            
                            //System.out.println("success"); 
                            pstmt.execute(); 
                            pstmt.close();
                            
                            //System.out.println("ENTRO 6"); 
                            
                            pstmt1.execute();  
                            pstmt1.close();
                            
                            //System.out.println("ENTRO 7"); 
                            
                            contador++;
                            cont++;
                        }
                        con.close();
				
        }
        catch(Exception e){
           e.printStackTrace();
        }finally{
           // En el finally cerramos el fichero, para asegurarnos
           // que se cierra tanto si todo va bien como si salta 
           // una excepcion.
           try{
              if( null != frNombreMasculino1 ){
                 frNombreMasculino1.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
           try{
              if( null != frApellido1 ){
                 frApellido1.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
           
           try{
              if( null != frApellido2 ){
                 frApellido2.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
           
           try{
              if( null != frApellido3 ){
                 frApellido3.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
           
           try{
              if( null != frApellido4 ){
                 frApellido4.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
           
           try{
              if( null != frNombreMasculino2 ){
                 frNombreMasculino2.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
           
           try{
              if( null != frNombreFemenino2 ){
                 frNombreFemenino2.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
           
           try{
              if( null != frNombreFemenino1 ){
                 frNombreFemenino1.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
           
           try{
              if( null != frFecha1 ){
                 frFecha1.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
           
           try{
              if( null != frFecha2 ){
                 frFecha2.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
           
           try{
              if( null != frDireccion2 ){
                 frDireccion2.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
           
           try{
              if( null != frDireccion1 ){
                 frDireccion1.close();
              }
           }catch (Exception e2){
              e2.printStackTrace();
           }
        }
        
        
    }
    
}
