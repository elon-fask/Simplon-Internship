package org.brief5.DB;

import java.sql.*;


public class DB_candidat {

	public static void main(String[] args) {

		DB_candidat obj_cnx = new DB_candidat();
		System.out.println(obj_cnx.get_cnx());
	}

	public Connection get_cnx() {

		Connection cn = null;

		try {

			Class.forName("org.postgresql.Driver");
			cn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Brief5", "postgres", "1234");
			if (cn != null) {

				System.out.println("working");
			} else {
				System.out.println("not working");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return cn;
	}
}
