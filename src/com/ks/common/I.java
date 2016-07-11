package com.ks.common;

public class I {
private int first;
private int m=0;
private int a=0;
public int getM() {
	m=m+1;
	return m;
}
public void setM(int m) {
	this.m = m;
}
public int getFirst() {
	return first;
}
public void setFirst(int first) {
	this.first = first;
}
public int getLast() {
	return last;
}
public void setLast(int last) {
	this.last = last;
}
public int getI() {
	i();
	return i;
}
public void setI(int i) {
	this.i = i;
}
private int last;
private int i=0;
private int i() {
	i=i+1;
	return i;
}
public int getA() {
	a=a+1;
	return a;
}
public void setA(int a) {
	this.a = a;
}
}