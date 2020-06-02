package myservlet.control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.data.loginbean;
import mybean.data.showquestion;

@SuppressWarnings("serial")
public class teacherAnswer extends HttpServlet {
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "jdbc:mysql://localhost:3306/mysqljava?useSSL=false&serverTimezone=Asia/Shanghai";
        String user = "root";  
        String password = "123456";
		Connection con;
		PreparedStatement sql;
		ResultSet rs;
		HttpSession session=request.getSession(true);
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		loginbean login=(loginbean)session.getAttribute("loginBean");
		String tlogname=login.getLogname();
		String tname;
		String answer="老师还未回答，请耐心等待";
		showquestion show=new showquestion();
		session.setAttribute("question",show);
		try {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			con=DriverManager.getConnection(url,user,password);
			String search="select tname from teacher where tusername='"+tlogname+"'";
			sql=con.prepareStatement(search);
			rs=sql.executeQuery();
			rs.beforeFirst();
			rs.next();
			tname=rs.getString(1);
			String insertCondition="select * from sques where tname='"+tname+"' and answer='"+answer+"' order by time desc ;";
			sql=con.prepareStatement(insertCondition);
			rs=sql.executeQuery();
			rs.beforeFirst();
			rs.next();
			for(int i=0;i<3;i++)
			{
				for(int j=0;j<5;j++)
				{
				show.setQues(rs.getString(j+1),i,j);
				}
				rs.next();
			}
			rs.close();
			sql.close();
	    	con.close();
			}catch(SQLException exp) {
				System.out.println(exp);
			  }
		RequestDispatcher dispatcher=request.getRequestDispatcher("answerStudent.jsp");
		dispatcher.forward(request,response);
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 doPost(request,response);
	}
}