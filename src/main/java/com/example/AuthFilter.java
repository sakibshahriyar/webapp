package com.example;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class AuthFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
        // Initialization code, if needed
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        HttpSession session = httpRequest.getSession(false);
        if (session == null || session.getAttribute("email") == null) {
            // User is not logged in, redirect to login page
            httpResponse.sendRedirect("login.jsp");
        } else {
            // User is logged in, continue with the request
            chain.doFilter(request, response);
        }
    }

    public void destroy() {
        // Cleanup code, if needed
    }
}
