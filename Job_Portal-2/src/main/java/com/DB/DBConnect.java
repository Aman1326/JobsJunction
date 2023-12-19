
package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

		private static Connection conn;
		public static Connection getConn() {

			try {
				String url = "jdbc:mysql://localhost:3306/job_portal_2";
				String id = "root";
				String password = "Aman&1234";
				
				if(conn == null) {
					Class.forName("com.mysql.cj.jdbc.Driver");
					conn = DriverManager.getConnection(url,id,password);
				}
			}catch(Exception e) {
			e.printStackTrace();
			
			}
			
			return conn;
			
		}
		
}


