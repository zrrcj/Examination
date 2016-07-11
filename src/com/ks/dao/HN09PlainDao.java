package com.ks.dao;

import java.util.List;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import com.ks.pojo.Hn09Plain;
@Scope("prototype")
@Repository
public class HN09PlainDao {

	public List<Hn09Plain> List(DataProvider dp,int pageint ,int pagesize) {
		String hql1=" from Hn09Plain ";
		return dp.EntityList(hql1, pageint, pagesize);
	}
	
	public List<Hn09Plain> List(DataProvider dp) {
		String hql1=" from Hn09Plain p where p.hn09PlnClass=:cls";
		return dp.EntityList(hql1);
	}
	
	public int Listsize(DataProvider dp) {
		String hql2="select count(0) from Hn09Plain ";
		return (int) dp.EntityListSize(hql2);
	}
	public boolean Save( DataProvider dp,Hn09Plain hnPlain) {
		return	dp.SaveEntity(hnPlain);
	}

	/**
	 * @param dp
	 * @return 返回考试安排实体 查询条件ID 
	 */
	public Hn09Plain SingleStudent(DataProvider dp) {
		return dp.SingleEntity("from Hn09Plain where hn09PlnId=:id");
	}
	
	/**
	 * @param dp
	 * @return 返回考试安排实体 查询条件 学年学期，考试日期，班级，考试时间
	 */
	public Hn09Plain SinglePlain(DataProvider dp) {
		return dp.SingleEntity("from Hn09Plain where hn09PlnTerm=:year and hn09PlnDate=:date and hn09PlnClass=:cls and TIME(:time) BETWEEN TIME(hn09PlnBegin) and TIME(hn09PlnEnd)");
	}
}
