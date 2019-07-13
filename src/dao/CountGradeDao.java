package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class CountGradeDao {
	public List<Integer> personData() throws SQLException {
		List<Integer> list = new ArrayList<Integer>();
		try {
			DBUtil dbUtil=new DBUtil();
			Connection con=dbUtil.getCon();
			String sql ="SELECT COUNT(*) num FROM grade GROUP BY grade;";
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				list.add(rs.getInt("num"));
				}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return list;
	}
}
