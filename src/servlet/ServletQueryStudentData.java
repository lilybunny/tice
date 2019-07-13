package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PersonDataDao ;
import dao.StudentDataDao;
import dao.PaimingDataDao;
import model.Record;
import model.Score;
import model.Student;

public class ServletQueryStudentData extends HttpServlet{
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        doGet(request, response);
	    }
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 StudentDataDao dao = new StudentDataDao();
		 List<Student> studentDataList;
		 String sid = request.getParameter("sid");
		 try{
			 studentDataList = dao.StudentData(sid);
			 request.setAttribute("studentDataList",studentDataList);
			 request.getRequestDispatcher("/my.jsp").forward(request, response);
		 } catch (SQLException e) {
	            e.printStackTrace();
	        }
	 }
	 
	
}
