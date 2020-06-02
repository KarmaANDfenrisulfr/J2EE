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
public class studentperson extends HttpServlet {
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException {
		String url = "jdbc:mysql://localhost:3306/mysqljava?useSSL=false&serverTimezone=Asia/Shanghai";
        String user = "root";  
        String password = "123456";
		Connection con = null;
		PreparedStatement sql;
		ResultSet rs;
		HttpSession session=request.getSession(true);
		loginbean person=(loginbean)session.getAttribute("loginBean");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name=person.getLogname();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			con=DriverManager.getConnection(url,user,password);
			String searchCondition="select * from user where username='"+name+"' ;";
			sql=con.prepareStatement(searchCondition);
			rs=sql.executeQuery();
			rs.beforeFirst();
			rs.next();
			person.setTelphone(rs.getString(3));
			person.setEmail(rs.getString(4));
			person.setRealname(rs.getString(5));
			rs.close();
			sql.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher=request.getRequestDispatcher("studentperson.jsp");
		dispatcher.forward(request,response);
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request,response);
	}
}