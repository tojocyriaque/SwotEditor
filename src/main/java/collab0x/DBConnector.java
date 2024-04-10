package collab0x;

import java.sql.*;

public class DBConnector {
	private static String dbUrl = "jdbc:mysql://localhost:3306/collab0x";
	private static String user = "tojo";
	private static String passwd = "ramaroson";
	
	public static Connection getConnection() throws SQLException
	{
		return DriverManager.getConnection(dbUrl, user, passwd);
	}
	
}
