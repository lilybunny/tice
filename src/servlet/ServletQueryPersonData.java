package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PersonDataDao ;
import dao.PaimingDataDao;
import model.Grade;
import model.Record;
import model.Score;

public class ServletQueryPersonData extends HttpServlet{
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        doGet(request, response);
	    }
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PersonDataDao dao = new PersonDataDao();
		 PaimingDataDao paidao=new PaimingDataDao();
		 List<Record> personDataList;
		 List<Score> paimingDataList;
		 List<Grade> gradeDataList;

		// List<Integer> paiming;
		 String sid = request.getParameter("sid");
		 try{
			 personDataList = dao.personData(sid);
			 paimingDataList = paidao.paimingData(sid);
			 gradeDataList=dao.gradeData(sid);
		//	 paiming = paidao.paiming(sid);
			 request.setAttribute("personDataList",personDataList);
			 request.setAttribute("paimingDataList",paimingDataList);
			 request.setAttribute("gradeDataList",gradeDataList);
			 
			 request.getRequestDispatcher("/index.jsp").forward(request, response);
		 } catch (SQLException e) {
	            e.printStackTrace();
	        }
	 }
	 
	
}
