import java.sql.Connection;
import java.sql.DriverManager;

public class TestSQLServer {
    public static void main(String[] args) {
        String url = "jdbc:sqlserver://GWNR71517\\MSSQLSERVERENTER;databaseName=AppBarrial;encrypt=true;trustServerCertificate=true";
        String user = "sa";
        String password = "P@ssw0rd";

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            System.out.println("¡Conexión exitosa con SQL Server!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        } catch (Exception e) {
            System.out.println("Error------------------------------------------------------------------------------: " + e.getMessage());
        }
    }
}