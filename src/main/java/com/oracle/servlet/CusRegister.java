package com.oracle.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracle.service.CusService;
import com.oracle.vo.Customer;

/**
 * Servlet implementation class CusRegister
 */
@WebServlet("/cusRegister.do")
public class CusRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CusRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String tel=request.getParameter("tel");
		//地址和申请成为模特?
//		String isModel=request.getParameterValues("isModel")[0];
//		System.out.println(isModel);
		
		Customer cus=new Customer();
		cus.setCus_username(username);
		cus.setCus_password(password);
		cus.setCus_name(name);
		cus.setCus_tel(tel);
		cus.setCus_isModel(0);
		
		CusService.register(cus);
		
		Cookie catcher_username=new Cookie("catcher_username",username);
		catcher_username.setMaxAge(60*60*24*7);
		response.addCookie(catcher_username);
		Cookie catcher_password=new Cookie("catcher_password",password);
		catcher_password.setMaxAge(60*60*24*7);
		response.addCookie(catcher_password);
		
		request.getRequestDispatcher("autoLogin.do").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
