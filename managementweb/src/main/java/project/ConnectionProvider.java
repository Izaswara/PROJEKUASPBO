package project;
import java.sql.*;
public class ConnectionProvider {
    public static Connection getCon(){
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/uas_pbo_db", "root", "");
            return con;
        }
        catch(Exception e){
            System.out.println(e);
            return null;
        }
    }
}
