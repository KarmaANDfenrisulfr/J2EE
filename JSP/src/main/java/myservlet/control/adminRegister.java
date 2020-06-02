package myservlet.control;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.data.registeredbean;

@SuppressWarnings("serial")
public class adminRegister extends HttpServlet {
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
		registeredbean registered=new registeredbean();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setAttribute("userBean", registered);
		String username=request.getParameter("username");
		String psword=request.getParameter("psword");
		String backNews="";
		try {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			con=DriverManager.getConnection(url,user,password);
			String insertCondition="INSERT INTO admin VALUES(?,?);";
			sql=con.prepareStatement(insertCondition);
		    sql.setString(1, username);
		    sql.setString(2, psword);
		    int m=sql.executeUpdate();
		    if(m!=0) {
		    	backNews="注册成功！";
		    	registered.setBackNews(backNews);
		    	registered.setUsername(username);
		    	registered.setPsword(psword);
		    	sql.close();
		    	con.close();
		    }
		}catch(SQLException exp) {
			backNews="该用户名已被使用，请您更换名字"+exp;
			registered.setBackNews(backNews);
		  }
	    
		
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("adminRegisteredAnswer.jsp");
		dispatcher.forward(request,response);
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request,response);
	}
	
}