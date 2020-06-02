package myservlet.control;

import java.io.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.data.loginbean;

@SuppressWarnings("serial")
public class teacherpublish extends HttpServlet {
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException {
		
		String url = "jdbc:mysql://localhost:3306/mysqljava?useSSL=false&serverTimezone=Asia/Shanghai";
        String user = "root";  
        String password = "123456";
		Connection con;
		PreparedStatement sql;
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String backNews="";
		String question=request.getParameter("question");
		String answer=request.getParameter("answer");
		String realname=request.getParameter("realname");
		//获取当前时间并格式化时间为指定格式
	    Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(currentTime);
		String today=dateString;
		HttpSession session=request.getSession(true);
		loginbean teacher=(loginbean)session.getAttribute("loginBean");
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			try {
			con=DriverManager.getConnection(url,user,password);
			String insertCondition="INSERT INTO tques VALUES(?,?,?,?);";
			sql=con.prepareStatement(insertCondition);
		    sql.setString(1, question);
		    sql.setString(2, answer);
		    sql.setString(3, realname);
		    sql.setString(4, today);
		    int m=sql.executeUpdate();
		    if(m!=0) {
		    	backNews="发布成功！";
		    	teacher.setBackNews(backNews);
		    	con.close();
		    }
			}catch(SQLException e) {
				backNews="发布失败";
			}
	    
		
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("lookpublish.jsp");
		dispatcher.forward(request,response);
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request,response);
	}
	
}