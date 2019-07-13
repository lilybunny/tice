package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;
import model.avg2015;

public class avg2015Dao  {
	public List<avg2015> avgData() throws SQLException {
		List<avg2015> list = new ArrayList<avg2015>();
		try {
			DBUtil dbUtil=new DBUtil();
			Connection con=dbUtil.getCon();
			String sql ="select * from tizhi2015";
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				avg2015 avg = new avg2015();
				avg.setY1(rs.getDouble("avg(y1)"));
				avg.setY2(rs.getDouble("avg(y2)"));
				avg.setY3(rs.getDouble("avg(y3)"));
				avg.setY4(rs.getDouble("avg(y4)"));
				avg.setSsex(rs.getInt("ssex"));
				list.add(avg);
				}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return list;
	}
}
