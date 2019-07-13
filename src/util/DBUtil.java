package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private String dbUrl="jdbc:mysql://localhost:3306/tice?characterEncoding=utf8";
	private String dbUserName="root";
	private String dbPassword="";
	private String jdbcName="com.mysql.jdbc.Driver";
	
public Connection getCon() throws Exception{
	Class.forName(jdbcName);
	Connection con=DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
	return con;
}
public void closeCon(Connection con) throws Exception{
	if(con!=null){
		
		con.close();
	}
}
public static void main(String[] args) {
	DBUtil dbUtil=new DBUtil();
	try {
		dbUtil.getCon();
		System.out.println("成功连接数据库!");
	} catch (Exception e) {
		e.printStackTrace();
	}
}

}
