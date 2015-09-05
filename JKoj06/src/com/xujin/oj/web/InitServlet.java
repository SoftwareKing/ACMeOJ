package com.xujin.oj.web;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;


public class InitServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static WebApplicationContext wc;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		//初始化spring的工厂
		wc = WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
		//初始化权限信息
		//Map<String,Set<String>> auths = AuthUtil.initAuth("com.xujin.oj.controller");
		//this.getServletContext().setAttribute("allAuths", auths);
		this.getServletContext().setAttribute("baseInfo", BaseInfoUtil.getInstacne().read());
	//	System.out.println( BaseInfoUtil.getInstacne().read());
		
		//System.out.println("------------------------系统初始化成功:"+auths+"-----------------------------");
	}
	
	public static WebApplicationContext getWc() {
		return wc;
	}

}
