package dao;
import java.sql.*;

public class ConnectionManager 
{
	public static Connection cn;
	public static Connection getConnection()
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
		}
		catch(ClassNotFoundException ee)
		{
			ee.printStackTrace();
		}
		catch(Exception ee)
		{
			ee.printStackTrace();
		}
		return cn;
	}

}
