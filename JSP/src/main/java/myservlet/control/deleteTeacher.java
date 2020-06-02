package myservlet.control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.data.loginbean;


@SuppressWarnings("serial")
public class deleteTeacher extends HttpServlet {
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException {
		String url = "jdbc:mysql://localhost:3306/mysqljava?useSSL=false&serverTimezone=Asia/Shanghai";
        String user = "root";  
        String password = "123456";
		Connection con = null;
		String backNews="";
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession(true);
		loginbean lyb=(loginbean)session.getAttribute("loginBean");
		String name=request.getParameter("username");
		String sql= "delete from teacher where tusername=? ";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		try {
			PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,name);
            int m=ps.executeUpdate();
            if(m!=0) {
    		backNews="É¾³ý³É¹¦";
    		lyb.setBackNews(backNews);
    		}
            else {
            backNews="É¾³ýÊ§°Ü";
        	lyb.setBackNews(backNews);	
            }
    		ps.close();
		    con.close();
		}catch (SQLException e)
		{
		backNews="É¾³ýÊ§°Ü"+e;
		lyb.setBackNews(backNews);
		}
        try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
			RequestDispatcher dispatcher=request.getRequestDispatcher("deleteTeacherAnswer.jsp");
			dispatcher.forward(request,response);
	   }
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request,response);
	}
	
}