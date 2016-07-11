package com.ks.common;

import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BaseAction extends ActionSupport implements SessionAware {
	private String m;
	protected Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	public String getM() {
		return m;
	}

	public void setM(String m) {
		this.m = m;
	}
	public String  getJson(Object msg) {
		JSONObject jsonObject =JSONObject.fromObject(msg);
		return jsonObject.toString();
	}
}
