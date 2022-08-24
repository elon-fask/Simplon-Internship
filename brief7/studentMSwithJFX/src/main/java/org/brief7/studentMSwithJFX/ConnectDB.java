package org.brief7.studentMSwithJFX;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectDB {
	
	private static final String DB_DRIVER="org.postgresql.Driver";
	private static final String DB_USERNAME="postgres";
	private static final String DB_PASSWORD="20040201Aatman*";
	private static final String DB_URL ="jdbc:postgresql://localhost:5432/studentsDB";

	private static Connection connection = null; 
	static {
			try {
				Class.forName(DB_DRIVER);
				connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
					} catch (ClassNotFoundException | SQLException e) {
						e.printStackTrace();
						}
				}
	
	public static Connection getConnection() {
		return connection;
	}
	
}









































/*
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;
public final class ConnectDB {
		private static boolean isDriverLoaded = true;
		static{
			try{
				Class.forName("org.postgresql.Driver");
				System.out.println("Driver Loaded");
				isDriverLoaded = true;	
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}
		}
		
		private final static String url="jdbc:postgresql://localhost:5432/studentsDB";
		private final static String user="postgres";
		private final static String password="20040201Aatman*";
		
		public static Connection getConnection() throws SQLException{
			Connection con = null;
			if(isDriverLoaded){
				con  = DriverManager.getConnection(url,user,password);
				System.out.println("Connection established");
			}
			return con;
		}
		
		
		public static void closeConnection(Connection con) throws SQLException{
			if(con!=null){
				con.close();
				System.out.println("connection closed");
			}
		}	
}
*/






/*
 * import java.sql.Connection; import java.sql.DriverManager; import
 * java.sql.SQLException;
 * 
 * public class ConnectDB {
 * 
 * private static final String DB_DRIVER="org.postgresql.Driver"; private static
 * final String DB_USERNAME="postgres"; private static final String
 * DB_PASSWORD="20040201Aatman*"; private static final String DB_URL
 * ="jdbc:postgresql://localhost:5432/studentsDB";
 * 
 * private static Connection connection = null; static { try {
 * Class.forName(DB_DRIVER); connection = DriverManager.getConnection(DB_URL,
 * DB_USERNAME, DB_PASSWORD); } catch (ClassNotFoundException | SQLException e)
 * { e.printStackTrace(); } }
 * 
 * public static Connection getConnection() throws SQLException{ Connection con
 * = null; if(isDriverLoaded){ con =
 * DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASWORD);
 * System.out.println("Connection established"); } return con; } }
 * 
 */