package com.ks.dao;

import java.util.List;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.ks.common.PageList;
import com.ks.pojo.Hn09Subject;

@Scope("prototype")
@Repository
public class HN09SubjectDao {
	public List<Map<String, Object>> list(DataProvider dp) {
		return dp.EntityList("select new Map(c.hn09SbjName as hn09SbjName,c.hn09SbjId as hn09SbjId) from Hn09Subject c");
	}
	/**
	 * @param dp
	 * @return 返回班级列表 查询条件 班级ID
	 */
	public List<Hn09Subject> Sublist(DataProvider dp) {
		return dp.EntityList(" from Hn09Subject s where s.hn09SbjId=:Subid");
	}
	/**
	 * @param dp
	 * @return 返回班级列表 查询条件 班级ID
	 */
	public Hn09Subject SubjectList(DataProvider dp) {
		return dp.SingleEntity(" from Hn09Subject s where s.hn09SbjName=:hn09SbjName");
	}
	public PageList<Map<String, Object>> list(DataProvider dp,int pageint ,int pagesize) {
		String hql1=" select new Map(c.hn09SbjName as hn09SbjName,c.hn09SbjId as hn09SbjId) from Hn09Subject c";
		String hql2="select count(0) from Hn09Subject c";
		return new PageList<Map<String, Object>>(dp.EntityList(hql1, pageint, pagesize),dp.EntityListSize(hql2));
	}
	
	public boolean Save( DataProvider dp,Hn09Subject hnsubject) {
		boolean flg=false;
		try {
			dp.SaveEntity(hnsubject);
			flg= true;
		} catch (Exception e) {
		}
		return flg;
	}
	public Hn09Subject SingleSubject(DataProvider dp) {
		return dp.SingleEntity("from Hn09Subject where hn09SbjId=:id");
	}
}
