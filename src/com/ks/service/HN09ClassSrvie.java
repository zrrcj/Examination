package com.ks.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.ks.common.PageList;
import com.ks.dao.DataParameter;
import com.ks.dao.DataProvider;
import com.ks.dao.HN09ClassDao;
import com.ks.pojo.Hn09Class;

@Scope("prototype")
@Service
public class HN09ClassSrvie {
	@Resource
	private DataProvider dp;
	@Resource
	private HN09ClassDao hn09ClassDao;

	public List<Map<String, Object>> ClsList() {
		return hn09ClassDao.list(dp);
	}

	public PageList<Map<String, Object>> list(int pageint, int pagesize) {
		return hn09ClassDao.list(dp, pageint, pagesize);
	}

	public boolean save(Hn09Class hn09Class) {
		//当修改班级标识时当前班级学生的班级标识需要更新

		//添加班级时需要判断添加的班级标识是否和现有标识冲突
		
		return hn09ClassDao.Save(dp, hn09Class);
	}

	public Hn09Class SingleClass(Hn09Class m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("id", m.getHn09ClsId()));
		dp.setParams(params);
		return hn09ClassDao.SingleStudent(dp);
	}
}
