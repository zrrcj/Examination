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
import com.ks.dao.HN09SubjectDao;
import com.ks.pojo.Hn09Subject;

@Scope("prototype")
@Service
public class HN09SubjectSrvie {
	@Resource
	private DataProvider dp;
	@Resource
	private HN09SubjectDao hnSubjectDao;

	public List<Map<String, Object>> ClsList() {
		return hnSubjectDao.list(dp);
	}

	public PageList<Map<String, Object>> list(int pageint, int pagesize) {
		return hnSubjectDao.list(dp, pageint, pagesize);
	}

	public boolean save(Hn09Subject hnSubject) {
		return hnSubjectDao.Save(dp, hnSubject);
	}
//返回一个实体
	public Hn09Subject SingleSubject(Hn09Subject m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("id", m.getHn09SbjId()));
		dp.setParams(params);
		return hnSubjectDao.SingleSubject(dp);
	}
}
