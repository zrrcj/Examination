package com.ks.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.ks.dao.DataProvider;

public class OpenSessionInViewFilter implements Filter{
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,FilterChain arg2) throws IOException, ServletException {
		// 执行链
		
		DataProvider dataProvider=new DataProvider();
	
		try {
			dataProvider.beginTrans();
			arg2.doFilter(arg0, arg1);
			dataProvider.commitTrans();
			dataProvider.closedb();
			System.out.println(dataProvider.getSessionIng()); 
		} catch (Exception e) {
			System.out.println(e.getMessage());
			dataProvider.rollbackTrans();
		}	
	}
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
