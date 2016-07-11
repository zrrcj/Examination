package com.ks.dao;

import java.util.List;
import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import com.ks.pojo.Hn09QstpaperDtl;
@Scope("prototype")
@Repository
public class HN09QstpaperDtlDao {

	public List<Hn09QstpaperDtl> List(DataProvider dp,int pageint ,int pagesize) {
		String hql1=" from Hn09QstpaperDtl ";
		return dp.EntityList(hql1, pageint, pagesize);
	}
	
	/**
	 * @param dp
	 * @return 返回考试详细表 查询条件 题型标识
	 */
	public List<Hn09QstpaperDtl> List(DataProvider dp) {
		String hql1=" from Hn09QstpaperDtl p where p.hn09QprdtlFlag=:flg ";
		return dp.EntityList(hql1);
	}
	
	public int Listsize(DataProvider dp) {
		String hql2="select count(0) from Hn09QstpaperDtl ";
		return (int) dp.EntityListSize(hql2);
	}
	public boolean Save( DataProvider dp,Hn09QstpaperDtl hnQstpaperDtl) {
		return	dp.SaveEntity(hnQstpaperDtl);
	}

	public boolean Save( DataProvider dp,Set<Hn09QstpaperDtl> qstpaperDtls) {
		return	dp.SaveEntitySet(qstpaperDtls);
	}
	public Hn09QstpaperDtl SingleQstpaperDtl(DataProvider dp) {
		return dp.SingleEntity("from Hn09QstpaperDtl where hn09QprdtlId=:id");
	}
	
}
