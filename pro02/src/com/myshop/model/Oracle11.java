package com.myshop.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Oracle11 {

	static String driver = "oracle.jdbc.driver.OracleDriver";
	static String url = "jdbc:oracle:thin:@localhost:1521:xe";
	static String user = "test2";
	static String pass = "1234";
	
	final static String NOTICE_SELECT_ALL = "select * from noice";
	final static String NOTICE_SELECT_ONE = "select * from notice where idx=?";
	final static String NOTICE_READCOUNT_UPDATE = "update notice set readcnt=redacnt+1 where idx=?";
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url,user,pass);
		return con;
	}
	public static void close(PreparedStatement pstmt, Connection con){
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch (SQLException e){
				e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection con){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}

