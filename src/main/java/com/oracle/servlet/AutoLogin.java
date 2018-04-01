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
@WebServlet("/autoLogin.do")
public class AutoLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AutoLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookie=request.getCookies();
		String username="";
		String password="";
		int i=0;
		
		do{
			if(username.equals(""))
			    if(cookie[i].getName().equals("catcher_username"))
			    	username=cookie[i].getValue();
			if(password.equals(""))
			    if(cookie[i].getName().equals("catcher_password"))
				    password=cookie[i].getValue();
		}while((username.equals("")||password.equals(""))&&++i<cookie.length);
		
		Customer cus=CusService.login(username, password);
		
		if(cus==null)
		{
			response.setContentType("text/plain");
			response.getWriter().append("{}");
		}
		else
		{
		//刷新Cookie的时间
			Cookie catcher_username=new Cookie("catcher_username",username);
			catcher_username.setMaxAge(60*60*24*7);
			response.addCookie(catcher_username);
			Cookie catcher_password=new Cookie("catcher_password",password);
			catcher_password.setMaxAge(60*60*24*7);
			response.addCookie(catcher_password);
			
			HttpSession session=request.getSession();
			session.setAttribute("user", cus);
		
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
