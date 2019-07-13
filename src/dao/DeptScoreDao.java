package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.DeptGrade;
import util.DBUtil;

public class DeptScoreDao {
	public List<DeptGrade> deptGrade() throws SQLException {
		List<DeptGrade> list = new ArrayList<DeptGrade>();
		try {
			DBUtil dbUtil=new DBUtil();
			Connection con=dbUtil.getCon();
			String sql ="SELECT dname,gscore FROM student,depot,grade WHERE student.dno=depot.dno AND student.sno=grade.sno";
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				DeptGrade dept = new DeptGrade();
				dept.setDname(rs.getString("dname"));
				dept.setGscore(rs.getDouble("gscore"));
				list.add(dept);
				}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return list;
	}
}
