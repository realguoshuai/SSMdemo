package org.gs.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.gs.constants.SystemConst;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.fabric.Response;

public class AdminInterceptor implements
HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		HttpSession session =request.getSession();
		if (null!=session.getAttribute(SystemConst.ADMIN_S_UNAME)) {
			return true;
		}else{
		response.sendRedirect(request.getContextPath()+"/admin/login.action");
		}
		return false;
	}
	
	
}
