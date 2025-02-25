package com.poly.fiter;


import java.io.IOException;


import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.asm.entity.*;
@WebFilter(filterName = "AuthFilter" , urlPatterns = {"/Bai3_AccountManagementServlet/*","/Bai3_AccountManagementServlet","/UserServletBai3/*"})
public class AuthFilter implements HttpFilter{

	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		String uri = req.getRequestURI();
		User user = (User) req.getSession().getAttribute("user");
		String error = "";
		System.out.println("AuthFilter running");
		if(user == null) {
			error = resp.encodeURL("Please login to use this function!");
			System.out.println("Vui lòng đăng nhập!");
		}
		else if(!(user.getRole()==0) && uri.contains("Bai3_AccountManagementServlet")) {
			System.out.println("Vui lòng đăng nhập với vai trò admin");
			error = resp.encodeURL("Please login with admin role");
			
		}
		if(!error.isEmpty()) {
//			req.setCharacterEncoding("UTF-8");
//			resp.setCharacterEncoding("UTF-8");
//			req.getSession().setAttribute("securi", uri);
			req.getSession().setAttribute("securi", error);
			System.out.println("Error!");
			//resp.sendRedirect("accountBai3/sign-in?error="+resp.encodeURL(error));
			resp.sendRedirect("views/login.jsp?error="+resp.encodeURL(error));
			//req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
			
			
		}
		else {
			System.out.println("No Error!");
			chain.doFilter(req, resp);
			req.getSession().setMaxInactiveInterval(30); // session lưu trữ trong khoảng thời gian bao lâu
	
			
		}
	}

}
