package com.ks.dao;

import java.util.List;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import com.ks.pojo.Hn09Qsttype;


@Scope("prototype")
@Repository
public class HN09QsttypeDao {
	public List<Hn09Qsttype> list(DataProvider dp) {
		return dp.EntityList("select c.hn09QsttpId as hn09QsttpId,c.hn09QsttpFlag as hn09QsttpFlag,c.hn09QsttpName as hn09QsttpName  from Hn09Qsttype c left join c.hn09Subject as s where s.hn09SbjId=:QsttpId");
	}
	
	public List<Hn09Qsttype> List(DataProvider dp,int pageint ,int pagesize) {
		String hql1=" from Hn09Qsttype ";
		return dp.EntityList(hql1, pageint, pagesize);
	}
	public int Listsize(DataProvider dp) {
		String hql2="select count(0) from Hn09Qsttype ";
		return (int) dp.EntityListSize(hql2);
	}
	public boolean Save( DataProvider dp,Hn09Qsttype hn09Qsttype) {
		try {
			dp.SaveEntity(hn09Qsttype);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	public Hn09Qsttype SingleStudent(DataProvider dp) {
		return dp.SingleEntity("from Hn09Qsttype where hn09QsttpId=:id");
	}
}
