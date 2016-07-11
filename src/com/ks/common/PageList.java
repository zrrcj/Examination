package com.ks.common;

import java.util.List;

public class PageList<T> {
private long record;
private List<T> list;
public long getRecord() {
	return record;
}
public void setRecord(long record) {
	this.record = record;
}
public List<T> getList() {
	return list;
}
public void setList(List<T> list) {
	this.list = list;
}
public  PageList() {
	
}
public  PageList(List<T> list,long record) {
	this.list=list;
	this.record=record;
}
}
