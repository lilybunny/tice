package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Record;
import model.Student;
import util.DBUtil;

public class StudentDataDao {
	public List<Student> StudentData(String sid) throws SQLException {
		List<Student> list = new ArrayList<Student>();
		try {
			DBUtil dbUtil=new DBUtil();
			Connection con=dbUtil.getCon();
			String sql ="select * from student where sno="+sid;
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				
				Student student=new Student();
	
				student.setSno(rs.getString("sno"));
				student.setBirthday(rs.getDate("sno"));
				student.setSname(rs.getString("sname"));
				student.setSsex(rs.getInt("sex"));
				student.setNno(rs.getInt("nno"));
				student.setIdnum(rs.getString("idnum"));
				student.setDno(rs.getInt("dno"));
				student.setYno(rs.getInt("yno"));
				student.setSorigin(rs.getString("sorigin"));
				
				
				list.add(student);
				}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return list;
	}
}
