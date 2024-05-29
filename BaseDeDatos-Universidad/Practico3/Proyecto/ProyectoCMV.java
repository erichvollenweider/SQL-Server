package Proyecto;

import java.sql.*;



public class ProyectoCMV {

    public static void main(String[] args) {
        
        try {
            String driver = "com.mysql.cj.jdbc.Driver";
            String url = "jdbc:mysql://127.0.0.1:3306/ProyectoCMV";
            String username = "root";
            String password = "root";

            Class.forName(driver);

            Connection connection = DriverManager.getConnection(url, username, password);
            
            String[] tipo = {"TABLE"};

            DatabaseMetaData metaData = connection.getMetaData();
            ResultSet resultSetTables = metaData.getTables(null, "ProyectoCMV", null, tipo);
            System.out.println("tablas de la base de datos");

            while(resultSetTables.next()) {
                System.out.println(" Nombre cine: " + resultSetTables.getString(1));
                System.out.println(" Dirección cine: " + resultSetTables.getString(2));
                System.out.println(" Telefono cine: " + resultSetTables.getString(3));
            }

        }   catch(ClassNotFoundException cnfe) {
            System.err.println("Error loading driver: " + cnfe);
        }   catch(SQLException sqle) {
    	    sqle.printStackTrace();
            System.err.println("Error connecting: " + sqle);
        }
    }
}






//Statement statement =connection.createStatement();

