package connect;
import java.sql.Connection;
import java.sql.DriverManager;
public class MySqlCon {


	 static Connection connection;
		public static Connection mysqlCon()
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				//System.out.println("Driver Registered....");
				connection=DriverManager.getConnection("jdbc:mysql://localhost/Project","root","");

	 
				System.out.println("Connection.."+connection);
			}
			catch (Exception e) {
				// TODO: handle exception
				System.out.println("Exception ...."+e);
			}
			return connection;
		}
		

	}


