package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;
import model.Score;

public class PaimingDataDao {
	public List<Score> paimingData(String sid) throws SQLException {
		List<Score> list = new ArrayList<Score>();
		try {
			DBUtil dbUtil=new DBUtil();
			Connection con=dbUtil.getCon();
			String sql ="select * from score where sno="+sid;
			
			PreparedStatement pst =con.prepareStatement(sql);
		
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				Score score=new Score();
				score.setDno(rs.getInt("dno"));
				score.setSno(rs.getString("sno"));
				score.setNno(rs.getInt("nno"));
				score.setY1(rs.getString("Y1"));
				score.setY2(rs.getString("Y2"));
				score.setY3(rs.getString("Y3"));
				score.setY4(rs.getString("Y4"));
				score.setScore(rs.getInt("score"));
				list.add(score);
				}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return list;
	}
		
		public List<Integer> paiming(String sid) throws SQLException {
			List<Integer> paiming = new ArrayList<Integer>();
			
			try {
				DBUtil dbUtil=new DBUtil();
				Connection con=dbUtil.getCon();
				String sql ="SELECT rank FROM(SELECT sno, score,(SELECT COUNT(score) FROM score WHERE ct.score <= score) AS rank FROM score AS ct ORDER BY score DESC) a WHERE sno="+sid;
				PreparedStatement pst =con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();
				while(rs.next()){
					paiming.add(rs.getInt("rank"));
					}
				String sql1 ="SELECT rank FROM(SELECT sno, y1,(SELECT COUNT(y1) FROM score WHERE ct.y1 <= y1) AS rank FROM score AS ct ORDER BY y1 DESC) a WHERE sno="+sid;
				PreparedStatement pst1 =con.prepareStatement(sql1);
				ResultSet rs1 = pst.executeQuery();
				while(rs.next()){
					paiming.add(rs.getInt("rank"));
					}
				String sql2 ="SELECT rank FROM(SELECT sno, y2,(SELECT COUNT(y2) FROM score WHERE ct.y2 <= y2) AS rank FROM score AS ct ORDER BY y2 DESC) a WHERE sno="+sid;
				PreparedStatement pst2 =con.prepareStatement(sql2);
				ResultSet rs2 = pst.executeQuery();
				while(rs.next()){
					paiming.add(rs.getInt("rank"));
					}
				String sql3 ="SELECT rank FROM(SELECT sno, y3,(SELECT COUNT(y3) FROM score WHERE ct.y3 <= y3) AS rank FROM score AS ct ORDER BY y3 DESC) a WHERE sno="+sid;
				PreparedStatement pst3 =con.prepareStatement(sql3);
				ResultSet rs3 = pst.executeQuery();
				while(rs.next()){
					paiming.add(rs.getInt("rank"));
					}
				String sql4 ="SELECT rank FROM(SELECT sno, y4,(SELECT COUNT(y4) FROM score WHERE ct.y4 <= y4) AS rank FROM score AS ct ORDER BY y4 DESC) a WHERE sno="+sid;
				PreparedStatement pst4 =con.prepareStatement(sql4);
				ResultSet rs4 = pst.executeQuery();
				while(rs.next()){
					paiming.add(rs.getInt("rank"));
					}
			} catch (Exception e) { 
				e.printStackTrace();
			}
			return paiming;
		}

}
