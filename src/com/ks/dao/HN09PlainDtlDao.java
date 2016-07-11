package com.ks.dao;

import java.util.List;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import com.ks.pojo.Hn09PlainDtl;
@Scope("prototype")
@Repository
public class HN09PlainDtlDao {
	public List<Hn09PlainDtl> list(DataProvider dp) {
		return dp.EntityList("select c.hn09QsttpId as hn09QsttpId,c.hn09QsttpFlag as hn09QsttpFlag,c.hn09QsttpName as hn09QsttpName  from Hn09Qsttype c left join c.hn09Subject as s where s.hn09SbjId=:QsttpId");
	}
	
	public List<Hn09PlainDtl> List(DataProvider dp,int pageint ,int pagesize) {
		String hql1=" from Hn09PlainDtl ";
		return dp.EntityList(hql1, pageint, pagesize);
	}
	public int Listsize(DataProvider dp) {
		String hql2="select count(0) from Hn09PlainDtl ";
		return (int) dp.EntityListSize(hql2);
	}
	public boolean Save( DataProvider dp,Hn09PlainDtl hnPlainDtl) {
		try {
			dp.SaveEntity(hnPlainDtl);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	/**
	 * @param dp
	 * @return 返回单个考试安排详细表 查询条件ID
	 */
	public Hn09PlainDtl SingleStudent(DataProvider dp) {
		return dp.SingleEntity("from Hn09PlainDtl where hn09PlndtlId=:id");
	}
}
