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

@SuppressWarnings("serial")
public class showlyb extends HttpServlet {
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
		String backNews;
		HttpSession session=request.getSession(true);
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		loginbean login=(loginbean)session.getAttribute("loginBean");
		try {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			con=DriverManager.getConnection(url,user,password);
			String insertCondition="select * from lyb order by time desc ;";
			sql=con.prepareStatement(insertCondition);
			rs=sql.executeQuery();
			rs.beforeFirst();
			rs.next();
			for(int i=0;i<10;i++)
			{
				for(int j=0;j<4;j++)
				{
				login.setLyb(rs.getString(j+1),i,j);
				}
				rs.next();
			}
			rs.close();
			sql.close();
	    	con.close();
			}catch(SQLException exp) {
				backNews="²éÑ¯³É¹¦!";
				login.setBackNews(backNews);
			  }
		RequestDispatcher dispatcher=request.getRequestDispatcher("lyb_show.jsp");
		dispatcher.forward(request,response);
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 doPost(request,response);
	}
}