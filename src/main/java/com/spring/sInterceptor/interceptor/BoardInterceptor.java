package com.spring.sInterceptor.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class BoardInterceptor extends HandlerInterceptorAdapter {
	/*
		preHandle: 들어가기 전에 (컨트롤러 들어가기 전에 제어하기 위해 사용)
		postHandle: 나올 때
		afterCompletion: view까지 처리가 되었을 때
	*/

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		System.out.println("Board preHandle 통과중...");
		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel")==null ? 99 : (int)session.getAttribute("sLevel");
		if(level > 3) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/message/loginNo");
			dispatcher.forward(request, response);
			return false;
		}
		else if(level == 3) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/message/levelNo");
			dispatcher.forward(request, response);
			return false;
		}
		//return super.preHandle(request, response, handler);
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("Board postHandle 통과중...");
		super.postHandle(request, response, handler, modelAndView);
	}
	
}
