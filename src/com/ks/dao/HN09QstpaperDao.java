package com.ks.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import com.ks.pojo.Hn09Qstpaper;
@Scope("prototype")
@Repository
public class HN09QstpaperDao {

	public List<Hn09Qstpaper> List(DataProvider dp,int pageint ,int pagesize) {
		String hql1=" from Hn09Qstpaper ";
		return dp.EntityList(hql1, pageint, pagesize);
	}
	
	public List<Hn09Qstpaper> ListStudent(DataProvider dp) {
		String hql1=" from Hn09Qstpaper where hn09QprNo=:no";
		return dp.EntityList(hql1);
	}
	public Hn09Qstpaper List(DataProvider dp) {
		String hql1=" from Hn09Qstpaper p where p.hn09QprPlinid=:plainid and p.hn09QprNo=:no and hn09QprBegin=:begin and hn09QprName=:name";
		return dp.SingleEntity(hql1);
	}
	public int Listsize(DataProvider dp) {
		String hql2="select count(0) from Hn09Qstpaper ";
		return (int) dp.EntityListSize(hql2);
	}
	public boolean Save( DataProvider dp,Hn09Qstpaper hnQstpaper) {
		return	dp.SaveEntity(hnQstpaper);
	}

	/**
	 * @param dp
	 * @return 返回考试表 查询条件 考试安排ID，考试日期，学号
	 */
	public Hn09Qstpaper SingleQstpaper(DataProvider dp) {
		return dp.SingleEntity("from Hn09Qstpaper where hn09QprPlinid=:id and hn09QprDate=:date and hn09QprNo=:no and hn09QprName=:name");
	}
	
/*	public Hn09Plain SinglePlain(DataProvider dp) {
		return dp.SingleEntity("from hnQstpaper where hn09PlnTerm='2016-1' and hn09PlnDate=:date and hn09PlnClass=:cls and TIME(:time) BETWEEN hn09PlnBegin and hn09PlnEnd");
	}*/
}
