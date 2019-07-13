package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DeptScoreDao;
import model.DeptGrade;


public class ServletCountGrade extends HttpServlet{
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        doGet(request, response);
	    }
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 DeptScoreDao dsd = new DeptScoreDao();
		 List<DeptGrade> deptGradeList;
		 try{
			 deptGradeList = dsd.deptGrade();
			 request.setAttribute("deptGrade",deptGradeList);
			 request.getRequestDispatcher("/wholedata.jsp").forward(request, response);
		 } catch (SQLException e) {
	            e.printStackTrace();
	        }
	 }
	 
	
}
