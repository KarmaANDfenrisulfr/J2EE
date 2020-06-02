package myservlet.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.data.loginbean;

@SuppressWarnings("serial")
public class loginservlet extends HttpServlet{
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
		Connection con;
		Statement sql;
		String condition;
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String logname=request.getParameter("logname");
		String psword=request.getParameter("password");
		String radio=request.getParameter("radio");
		boolean boo=(logname.length()>0)&&(psword.length()>0);
		String s="student";
		String t="teacher";
		String a="admin";
		if(radio.equals(s)) {
			try {
				con=DriverManager.getConnection(url, user, password);
				condition="select * from user where username='"+logname+"'and psword='"+psword+"'";
				sql=con.createStatement();
				if(boo) {
					ResultSet rs=sql.executeQuery(condition);
					boolean m=rs.next();
					if(m==true) {
						//调用登陆成功函数
						success(request,response,logname,psword);
						RequestDispatcher dispatcher=request.getRequestDispatcher("tques");//先转到老师发出的问题的SERVLET，以便加载问题，再从tques转到index.jsp
						dispatcher.forward(request,response);
					}
					else {
						String backNews="您输入的用户名不存在，或密码不匹配";
						//调用登录失败方法
						fail(request,response,logname,backNews);
					}
				}
				con.close();
			} catch (SQLException exp) {
				String backNews=""+exp;
				fail(request,response,logname,backNews);
				exp.printStackTrace();
			}
			
		}
		if(radio.equals(t)) {
			try {
				con=DriverManager.getConnection(url, user, password);
				condition="select * from teacher where tusername='"+logname+"'and password='"+psword+"'";
				sql=con.createStatement();
				if(boo) {
					ResultSet rs=sql.executeQuery(condition);
					boolean m=rs.next();
					if(m==true) {
						//调用登陆成功函数
						success(request,response,logname,psword);
						RequestDispatcher dispatcher=request.getRequestDispatcher("teacher.jsp");
						dispatcher.forward(request,response);
					}
					else {
						String backNews="您输入的用户名不存在，或密码不匹配";
						//调用登录失败方法
						fail(request,response,logname,backNews);
					}
				}
				con.close();
			} catch (SQLException exp) {
				String backNews=""+exp;
				fail(request,response,logname,backNews);
				exp.printStackTrace();
			}
			
		}
		if(radio.equals(a)) {
			try {
				con=DriverManager.getConnection(url, user, password);
				condition="select * from admin where admin='"+logname+"'and password='"+psword+"'";
				sql=con.createStatement();
				if(boo) {
					ResultSet rs=sql.executeQuery(condition);
					boolean m=rs.next();
					if(m==true) {
						//调用登陆成功函数
						success(request,response,logname,psword);
						RequestDispatcher dispatcher=request.getRequestDispatcher("admin.jsp");
						dispatcher.forward(request,response);
					}
					else {
						String backNews="您输入的用户名不存在，或密码不匹配";
						//调用登录失败方法
						fail(request,response,logname,backNews);
					}
				}
				con.close();
			} catch (SQLException exp) {
				String backNews=""+exp;
				fail(request,response,logname,backNews);
				exp.printStackTrace();
			}
			
		}
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		doPost(request,response);
	}
	public void success(HttpServletRequest request, HttpServletResponse response, String logname, String psword) {
		loginbean loginBean=null;
		HttpSession session=request.getSession(true);
		try {
			loginBean=(loginbean)session.getAttribute("loginBean");
			if(loginBean==null) {
				loginBean=new loginbean();
				session.setAttribute("loginBean", loginBean);
				loginBean=(loginbean)session.getAttribute("loginBean");
			}
			String name=loginBean.getLogname();
			if(name.equals(logname)) {
				loginBean.setBackNews(logname+"已经登录了");
				loginBean.setLogname(logname);
			}
			else {//数据模型存储新的登录用户
				loginBean.setBackNews(logname+"登录成功");
				loginBean.setLogname(logname);
			}
		}catch(Exception ee) {
			loginBean=new loginbean();
			session.setAttribute("loginBean", loginBean);
			loginBean.setBackNews(logname+"登录成功");
			loginBean.setLogname(logname);
		}
	}
	public void fail(HttpServletRequest request,HttpServletResponse response,String logname,String backNews) {
		response.setContentType("text/html;charset=UTF-8");
		try {
			PrintWriter out=response.getWriter();
			out.println("<html><body>");
			out.println("<h2>"+logname+"登录反馈结果<br>"+backNews+"</h2>");
			out.println("返回登录页面或主页<br>");
			out.println("<a href=login.jsp>登录页面</a>");
			out.println("</body></html>");
		}catch(IOException exp) {}
	}
}