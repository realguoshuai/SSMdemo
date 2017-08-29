package org.gs.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

public class ContextFilter implements Filter {

	
    public ContextFilter() {
    	
    }

	
	public void destroy() {
		
	}

//	项目的总目录
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest hRequest =(HttpServletRequest) request;
		String path =hRequest.getContextPath();
		StringBuilder builder = new StringBuilder();
		builder.append(request.getScheme());//获取,命名空间
		builder.append("://");
		builder.append(request.getServerName());
		builder.append(":");
		builder.append(request.getServerPort());
		builder.append(path);
		builder.append("/");
		String contextPath =builder.toString();
		Logger.getLogger(getClass()).info(">>>"+contextPath);
		hRequest.setAttribute("BaseContext", contextPath);
		chain.doFilter(request, response);
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
