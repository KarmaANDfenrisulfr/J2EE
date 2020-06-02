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
public class answerstudent extends HttpServlet {
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "jdbc:mysql://localhost:3306/mysqljava?useSSL=false&serverTimezone=Asia/Shanghai";
        String user = "root";  
        String password = "123456";
        String backNews="";
		Connection con;
		HttpSession session=request.getSession(true);
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		loginbean login=(loginbean)session.getAttribute("loginBean");
		String name1=request.getParameter("name1");
		String name2=request.getParameter("name2");
		String name3=request.getParameter("name3");
		String question1=request.getParameter("question1");
		String question2=request.getParameter("question2");
		String question3=request.getParameter("question3");
		String tname1=request.getParameter("tname1");
		String tname2=request.getParameter("tname2");
		String tname3=request.getParameter("tname3");
		String answer1=request.getParameter("answer1");
		String answer2=request.getParameter("answer2");
		String answer3=request.getParameter("answer3");
		try {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			con=DriverManager.getConnection(url,user,password);
			String form1="update sques set answer='"+answer1+"' where question='"+question1+"' and username='"+name1+"' and tname='"+tname1+"'";
			String form2="update sques set answer='"+answer2+"' where question='"+question2+"' and username='"+name2+"' and tname='"+tname2+"'";
			String form3="update sques set answer='"+answer3+"' where question='"+question3+"' and username='"+name3+"' and tname='"+tname3+"'";
			PreparedStatement ps = con.prepareStatement(form1);
        	int m=ps.executeUpdate();
        	PreparedStatement st = con.prepareStatement(form2);
        	int n=st.executeUpdate();
        	PreparedStatement rs = con.prepareStatement(form3);
        	int p=rs.executeUpdate();
        	if(m!=0||n!=0||p!=0){
        		backNews="回答成功";
        		login.setBackNews(backNews);
        	}
        	else {
        		backNews="回答失败";
        		login.setBackNews(backNews);
        	}
			}catch(SQLException exp) {
				backNews="回答失败";
				login.setBackNews(backNews);
				System.out.println(exp);
			  }
		RequestDispatcher dispatcher=request.getRequestDispatcher("tanswerback.jsp");
		dispatcher.forward(request,response);
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 doPost(request,response);
	}
}