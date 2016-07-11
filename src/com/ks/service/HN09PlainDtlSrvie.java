package com.ks.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.ks.dao.DataParameter;
import com.ks.dao.DataProvider;
import com.ks.dao.HN09PlainDtlDao;
import com.ks.dao.HN09SubjectDao;
import com.ks.pojo.Hn09PlainDtl;

@Scope("prototype")
@Service
public class HN09PlainDtlSrvie {
	@Resource
	private DataProvider dp;
	@Resource
	private HN09PlainDtlDao hnPlainDtlDao;
	@Resource
	private HN09SubjectDao hnSubjectDao;
	public List<Hn09PlainDtl> List(int pageint, int pagesize) {
		return hnPlainDtlDao.List(dp,pageint,pagesize);
	}
	public int Listsize() {
		return hnPlainDtlDao.Listsize(dp);
	}
	public List<Map<String, Object>> KmList() {
		return hnSubjectDao.list(dp);
	}
	public boolean save(Hn09PlainDtl hnPlainDtl) {
		return hnPlainDtlDao.Save(dp, hnPlainDtl);
	}

	public Hn09PlainDtl SingleClass(Hn09PlainDtl m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("id", m.getHn09PlndtlId()));
		dp.setParams(params);
		return hnPlainDtlDao.SingleStudent(dp);
	}
}
