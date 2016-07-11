package com.ks.dao;

import java.util.List;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.ks.common.PageList;
import com.ks.pojo.Hn09Class;


@Scope("prototype")
@Repository
public class HN09ClassDao {
	/**
	 * @param dp
	 * @return 返回班级列表Map类型
	 */
	public List<Map<String, Object>> list(DataProvider dp) {
		return dp.EntityList("select new Map(c.hn09ClsFlag as hn09ClsFlag,c.hn09ClsName as hn09ClsName,c.hn09ClsId as hn09ClsId) from Hn09Class c");
	}
	/**
	 * @param dp
	 * @param pageint 页码
	 * @param pagesize 页面大小
	 * @return 返回分页条数
	 */
	public PageList<Map<String, Object>> list(DataProvider dp,int pageint ,int pagesize) {
		String hql1=" select new Map(c.hn09ClsFlag as hn09ClsFlag,c.hn09ClsName as hn09ClsName,c.hn09ClsId as hn09ClsId) from Hn09Class c";
		String hql2="select count(0) from Hn09Class c";
		return new PageList<Map<String, Object>>(dp.EntityList(hql1, pageint, pagesize),dp.EntityListSize(hql2));
	}
	
	/**
	 * 保存方法
	 * @param dp
	 * @param hn09Class 班级实体
	 * @return 
	 */
	public boolean Save( DataProvider dp,Hn09Class hn09Class) {
		try {
			dp.SaveEntity(hn09Class);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	/**
	 * @param dp
	 * @return 返回单个班级实体 查询条件ID
	 */
	public Hn09Class SingleStudent(DataProvider dp) {
		return dp.SingleEntity("from Hn09Class where hn09ClsId=:id");
	}
	
	/**
	 * @param dp
	 * @return 返回单个班级实体 查询条件班级标识
	 */
	public Hn09Class SingleCls(DataProvider dp) {
		return dp.SingleEntity("from Hn09Class where hn09ClsFlag=:clsflg");
	}
}
