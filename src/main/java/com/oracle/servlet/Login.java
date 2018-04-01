package com.oracle.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;

import com.oracle.service.CusService;
import com.oracle.vo.Customer;

/**
 * Servlet implementation class AutoLogin
 */
@WebServlet("/login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Customer cus=CusService.login(username, password);
		
		if(cus==null)
		//”√ªß√˚√‹¬Î¥ÌŒÛ£¨ajax
		{
			response.setContentType("text/plain");
			response.getWriter().println("{}");
		}
		else
		{
			Cookie catcher_username=new Cookie("catcher_username",username);
			catcher_username.setMaxAge(60*60*24*7);
			response.addCookie(catcher_username);
			Cookie catcher_password=new Cookie("catcher_password",password);
			catcher_password.setMaxAge(60*60*24*7);
			response.addCookie(catcher_password);
			
			HttpSession session=request.getSession();
			session.setAttribute("user", cus);
			
			//ajax
			ObjectMapper mapper=new ObjectMapper();
			String json=mapper.writeValueAsString(cus);
		
			response.setContentType("text/plain");
			response.getWriter().append(json);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
