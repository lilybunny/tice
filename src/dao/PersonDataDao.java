package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;
import model.Grade;
import model.Record;

public class PersonDataDao {
	public List<Record> personData(String sid) throws SQLException {
		List<Record> list = new ArrayList<Record>();
		try {
			DBUtil dbUtil=new DBUtil();
			Connection con=dbUtil.getCon();
			String sql ="select * from record where sno="+sid;
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				Record record = new Record();
				record.setYear(rs.getInt("ryear"));
				record.setSno(rs.getString("sno"));
				record.setHeight(rs.getDouble("height"));
				record.setWeight(rs.getDouble("weight"));
				record.setFhl(rs.getInt("fhl"));
				record.setRun50(rs.getDouble("run50"));
				record.setJump(rs.getInt("jump"));
				record.setZwt(rs.getDouble("zwt"));
				record.setRun800(rs.getDouble("run800"));
				record.setRun1000(rs.getDouble("run1000"));
				record.setYwqz(rs.getInt("ywqz"));
				record.setYtxs(rs.getInt("ytxs"));
				
				list.add(record);
				}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return list;
	}
	public List<Grade> gradeData(String sid) throws SQLException {
		List<Grade> list1 = new ArrayList<Grade>();
		try {
			DBUtil dbUtil=new DBUtil();
			Connection con=dbUtil.getCon();
			String sql ="select * from grade where sno="+sid;
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){		
				Grade grade =new Grade();
				grade.setGbmi(rs.getString("gbmi"));
				grade.setGfhl(rs.getString("gfhl"));
				grade.setGjump(rs.getString("gjump"));
				grade.setGlrun(rs.getString("glrun"));
				grade.setGrade(rs.getString("grade"));
				grade.setGscore(rs.getDouble("gscore"));
				grade.setGsrun(rs.getString("gsrun"));
				grade.setGup(rs.getString("gup"));
				grade.setGzwt(rs.getString("gzwt"));
				grade.setSno(rs.getString("sno"));
				grade.setYear(rs.getInt("year"));
				list1.add(grade);
				}
			System.out.println(list1);
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return list1;
	}

}
