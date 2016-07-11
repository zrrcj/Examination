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
import com.ks.dao.HN09StudentDao;
import com.ks.pojo.Hn09Student;

@Scope("prototype")
@Service
public class HN09StudentSrvie {
	@Resource
	private DataProvider dp;
	@Resource
	private HN09StudentDao hn09StudentDao;

	public PageList<Map<String, Object>> list(int pageint, int pagesize) {
		return hn09StudentDao.list(dp, pageint, pagesize);
	}

	public boolean save(Hn09Student student) {
		return hn09StudentDao.Save(dp, student);
	}
	public Hn09Student SingleStudent(Hn09Student m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("id", m.getHn09StuId()));
		dp.setParams(params);
		return hn09StudentDao.SingleStudent(dp);
	}
	
	public boolean SavePwd(Hn09Student m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("id", m.getHn09StuId()));
		dp.setParams(params);
		return hn09StudentDao.UpdataPwd(dp,m.getHn09StuPwd());
	}
}
