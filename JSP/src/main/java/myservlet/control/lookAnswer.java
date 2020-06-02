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
public class lookAnswer extends HttpServlet {
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	@SuppressWarnings("null")
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException {
		String url = "jdbc:mysql://localhost:3306/mysqljava?useSSL=false&serverTimezone=Asia/Shanghai";
        String user = "root";  
        String password = "123456";
		Connection con = null;
		PreparedStatement sql;
		ResultSet rs;
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession(true);
		loginbean look=(loginbean)session.getAttribute("loginBean");
		String backNews="";
		String ques=request.getParameter("ques");
		String student = "select * from tques where question='"+ques+"'";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
			try {
				sql=con.prepareStatement(student);
				rs=sql.executeQuery();
				rs.beforeFirst();
				if(rs.next()) 
				{
	            backNews="查看成功";
				look.setBackNews(backNews);
				look.setQuesPublish(rs.getString(1),0);
				look.setQuesPublish(rs.getString(2),1);
				look.setQuesPublish(rs.getString(3),2);
				look.setQuesPublish(rs.getString(4),3);
				}
				rs.close();
				sql.close();
				con.close();
			} catch (SQLException e) {
				backNews="查看失败"+e;
				look.setBackNews(backNews);
			}
		    
			RequestDispatcher dispatcher=request.getRequestDispatcher("lookAnswer.jsp");
			dispatcher.forward(request,response);
	   }
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request,response);
	}
	
}