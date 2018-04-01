package com.oracle.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracle.vo.Customer;

/**
 * Servlet Filter implementation class Filter
 */
@WebFilter()
public class Filter implements javax.servlet.Filter {
	
	private List<String> listUri=new ArrayList<String>();
    /**
     * Default constructor. 
     */
    public Filter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse res=(HttpServletResponse)response;
		
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		
		String uri=req.getRequestURI();
		String path=req.getContextPath();
		uri=uri.replaceFirst(path, "");
		
		Customer cus=(Customer) req.getAttribute("user");
		
		if(cus!=null)
			chain.doFilter(request, response);
		if(listUri.contains(uri))
			chain.doFilter(request, response);
		else
			res.sendRedirect("index.html");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		listUri.add("/login.do");
		listUri.add("/register.do");
		listUri.add("/autoLogin.do");
		listUri.add("/index.html");
	}

}
