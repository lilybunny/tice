package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.avg2015Dao;
import model.avg2015;;

public class ServletAvg2015Data extends HttpServlet{
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        doGet(request, response);
	    }
	 public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 avg2015Dao odao = new avg2015Dao();
		 List<avg2015> avglist;
		 try{
			 avglist = odao.avgData();
			 request.setAttribute("avglist",avglist);
			 request.getRequestDispatcher("/map.jsp").forward(request, response);
		 } catch (SQLException e) {
	            e.printStackTrace();
	        }
	 }
}