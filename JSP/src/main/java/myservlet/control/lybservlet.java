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

import mybean.data.lybbean;

 
 
@SuppressWarnings("serial")
public class lybservlet extends HttpServlet {
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
		lybbean lybbean=new lybbean();
		HttpSession session=request.getSession(true);
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		session.setAttribute("lybBean", lybbean);
		String author = request.getParameter("name");
		String title = request.getParameter("theme");
		String content = request.getParameter("message");
		String backNews;
		//获取当前时间并格式化时间为指定格式
		Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dateString = formatter.format(currentTime);
		String today=dateString;
		
		try {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			con=DriverManager.getConnection(url,user,password);
			String insertCondition="INSERT INTO lyb VALUES(?,?,?,?);";
			sql=con.prepareStatement(insertCondition);
		    sql.setString(1, author);
		    sql.setString(2, title);
		    sql.setString(3, content);
		    sql.setString(4, today);
		    int m=sql.executeUpdate();
		    if(m!=0) {
		    	backNews="留言成功！";
		    	lybbean.setBackNews(backNews);
		    	lybbean.setAuthor(author);
		    	lybbean.setTheme(title);
		    	lybbean.setContent(content);
		    	lybbean.setTime(today);
		    	sql.close();
		    	con.close();
		    }
		}catch(SQLException exp) {
			backNews="留言失败！用户名不能为空"+exp;
			lybbean.setBackNews(backNews);  
		  }
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("showlyb.jsp");
		dispatcher.forward(request,response);
	    }
		
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 doPost(request,response);
	}
}