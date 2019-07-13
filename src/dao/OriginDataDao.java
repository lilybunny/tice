package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;
import model.Origin;
import model.Record;

public class OriginDataDao  {
	public List<Origin> OriginData() throws SQLException {
		List<Origin> list = new ArrayList<Origin>();
		try {
			DBUtil dbUtil=new DBUtil();
			Connection con=dbUtil.getCon();
			String sql ="select origin,height,weight,fhl from originavg";
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				Origin origin = new Origin();
				origin.setOrigin(rs.getString("origin"));
				origin.setHeight(rs.getDouble("height"));
				origin.setWeight(rs.getDouble("weight"));
				origin.setFhl(rs.getInt("fhl"));
				list.add(origin);
				}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return list;
	}
}
