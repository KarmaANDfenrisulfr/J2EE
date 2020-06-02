package myservlet.control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
public class studentques extends HttpServlet{
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		String url = "jdbc:mysql://localhost:3306/mysqljava?useSSL=false&serverTimezone=Asia/Shanghai";
        String user = "root"; 
        String password = "123456";
		Connection con = null;
		PreparedStatement sql;
		String backNews="提问失败";
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String sname=request.getParameter("sname");
		String tname=request.getParameter("tname");
		String ques=request.getParameter("question");
		String answer="老师还未回答，请耐心等待";
		//获取当前时间并格式化时间为指定格式
	    Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(currentTime);
		String today=dateString;
		HttpSession session=request.getSession(true);
		loginbean student=(loginbean)session.getAttribute("loginBean");
		try {
			con=DriverManager.getConnection(url,user,password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
		String insertCondition="INSERT INTO sques VALUES(?,?,?,?,?);";
		sql=con.prepareStatement(insertCondition);
	    sql.setString(1, ques);
	    sql.setString(2, answer);
	    sql.setString(3, sname);
	    sql.setString(4, tname);
	    sql.setString(5, today);
	    int m=sql.executeUpdate();
	    if(m!=0) {
	    	backNews="提问成功！";
	    	student.setBackNews(backNews);
	    	sql.close();
	    	con.close();
	    }
	  }catch(SQLException exp) {
		backNews="提问失败!该问题你已向该老师提问，请不要重复提问"+exp;
		student.setBackNews(backNews);
	  }
		RequestDispatcher dispatcher=request.getRequestDispatcher("studentquesAnswer.jsp");
		dispatcher.forward(request,response);
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request,response);
	}
}