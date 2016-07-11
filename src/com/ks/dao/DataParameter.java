package com.ks.dao;

public class DataParameter {

	private String paramName;

	public String getParamName() {
		return paramName;
	}

	public void setParamName(String paramName) {
		this.paramName = paramName;
	}

	public Object getParamVale() {
		return paramValue;
	}

	public void setParamVale(Object paramValue) {
		this.paramValue = paramValue;
	}

	private Object paramValue;

	public DataParameter() {

	}

	public DataParameter(String paramName, Object ParamValue) {
		this.paramName = paramName;
		this.paramValue = ParamValue;
	}
}
