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

import mybean.data.foundpasswordbean;


@SuppressWarnings("serial")
public class foundpassword extends HttpServlet {
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException {
		String url = "jdbc:mysql://localhost:3306/mysqljava?useSSL=false&serverTimezone=Asia/Shanghai";
        String user = "root";  
        String password = "123456";
		Connection con = null;
		foundpasswordbean found=new foundpasswordbean();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession(true);
		session.setAttribute("foundPassword", found);
		
		String username=request.getParameter("username");
		String psword=request.getParameter("newpassword");
		String email=request.getParameter("email");
		String radio=request.getParameter("radio");
		String backNews="";
		String s="student";
		String t="teacher";
		String student = "update user set psword='"+psword+"' where username='"+username+"' and email='"+email+"'";
		String teacher = "update teacher set password='"+psword+"' where tusername='"+username+"' and temail='"+email+"'";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		if(radio.equals(s)){
			try {
				
	        	PreparedStatement ps = con.prepareStatement(student);
	        	int m=ps.executeUpdate();
	        	if(m!=0)
				{backNews="更新成功";
				found.setBackNews(backNews);
		    	found.setPsword(psword);
				}
	        	else
	        	{backNews="查询不到该用户或用户名与邮箱不匹配";
	        	found.setBackNews(backNews);
	        	}
				
			} catch (SQLException e) {
				backNews="更新失败"+e;
				found.setBackNews(backNews);
			}
		    }
			
			if(radio.equals(t)) {
				try {
					
		        	PreparedStatement ps = con.prepareStatement(teacher);
		        	int n=ps.executeUpdate();
		        	if(n!=0)
					{backNews="更新成功";
					found.setBackNews(backNews);
			    	found.setPsword(psword);
			    	}
		        	else
		        	{backNews="查询不到该用户或用户名与邮箱不匹配";
		        	found.setBackNews(backNews);
		        	}
					
				} catch (SQLException e) {
					backNews="更新失败"+e;
					found.setBackNews(backNews);
				}
			 }
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			RequestDispatcher dispatcher=request.getRequestDispatcher("resetPassword.jsp");
			dispatcher.forward(request,response);
	   }
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request,response);
	}
	
}