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
public class registeredservlet extends HttpServlet {
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
		String telphone=request.getParameter("telphone");
		String email=request.getParameter("email");
		String realname=request.getParameter("realname");
		String radio=request.getParameter("radio");
		String backNews="";
		String s="student";
		String t="teacher";
		if(radio.equals(s)) {
		try {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			con=DriverManager.getConnection(url,user,password);
			String insertCondition="INSERT INTO user VALUES(?,?,?,?,?);";
			sql=con.prepareStatement(insertCondition);
		    sql.setString(1, username);
		    sql.setString(2, psword);
		    sql.setString(3, telphone);
		    sql.setString(4, email);
		    sql.setString(5, realname);
		    int m=sql.executeUpdate();
		    if(m!=0) {
		    	backNews="注册成功！";
		    	registered.setBackNews(backNews);
		    	registered.setUsername(username);
		    	registered.setPsword(psword);
		    	registered.setTelphone(telphone);
		    	registered.setEmail(email);
		    	registered.setRealname(realname);
		    	registered.setRadio(radio);
		    	sql.close();
		    	con.close();
		    }
		}catch(SQLException exp) {
			backNews="该用户名已被使用，请您更换名字"+exp;
			registered.setBackNews(backNews);
		  }
	    }
		
		if(radio.equals(t)) {
			try {
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				con=DriverManager.getConnection(url,user,password);
				String insertCondition="INSERT INTO teacher VALUES(?,?,?,?,?);";
				sql=con.prepareStatement(insertCondition);
			    sql.setString(1, username);
			    sql.setString(2, psword);
			    sql.setString(3, telphone);
			    sql.setString(4, email);
			    sql.setString(5, realname);
			    int m=sql.executeUpdate();
			    if(m!=0) {
			    	backNews="注册成功！";
			    	registered.setBackNews(backNews);
			    	registered.setUsername(username);
			    	registered.setPsword(psword);
			    	registered.setTelphone(telphone);
			    	registered.setEmail(email);
			    	registered.setRealname(realname);
			    	registered.setRadio(radio);
			    	sql.close();
			    	con.close();
			    }
			}catch(SQLException exp) {
				backNews="该用户名已被使用，请您更换名字"+exp;
				registered.setBackNews(backNews);
			}
		 }
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("registeredAnswer.jsp");
		dispatcher.forward(request,response);
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request,response);
	}
	
}