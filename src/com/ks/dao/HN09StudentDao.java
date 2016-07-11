package com.ks.dao;

import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.ks.common.PageList;
import com.ks.pojo.Hn09Student;
@Scope("prototype")
@Repository
public class HN09StudentDao {

	public PageList<Map<String, Object>> list(DataProvider dp,int pageint ,int pagesize) {
		String hql1="select new Map(s.hn09StuId as hn09StuId,s.hn09StuNo as hn09StuNo,s.hn09StuPwd as hn09StuPwd,s.hn09StuName as hn09StuName,s.hn09StuSex as hn09StuSex,s.hn09StuClsflag as hn09StuClsflag,c.hn09ClsName as hn09ClsName) from Hn09Student s,Hn09Class c where s.hn09StuClsflag=c.hn09ClsFlag";
		String hql2="select count(0) from Hn09Student s,Hn09Class c where s.hn09StuClsflag=c.hn09ClsFlag";
		return new PageList<Map<String, Object>>(dp.EntityList(hql1, pageint, pagesize),dp.EntityListSize(hql2));
	}
	public boolean Save( DataProvider dp,Hn09Student student) {
		try {
			dp.SaveEntity(student);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public Hn09Student SingleStudent(DataProvider dp) {
		return dp.SingleEntity("from Hn09Student where hn09StuId=:id");
	}
	
	/**
	 * @param dp
	 * @param pwd 密码
	 * @return 更新用户密码
	 */
	public boolean UpdataPwd(DataProvider dp,String pwd) {
		if ((int)dp.creataSql("update Hn09Student s set  s.hn09StuPwd="+pwd+" where s.hn09StuId=:id")>0) {
			return true;
		} else {
			return false;
		}
	}
}
