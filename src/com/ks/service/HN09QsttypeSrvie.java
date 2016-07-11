package com.ks.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.ks.dao.DataParameter;
import com.ks.dao.DataProvider;
import com.ks.dao.HN09QsttypeDao;
import com.ks.dao.HN09SubjectDao;
import com.ks.pojo.Hn09Qsttype;

@Scope("prototype")
@Service
public class HN09QsttypeSrvie {
	@Resource
	private DataProvider dp;
	@Resource
	private HN09QsttypeDao hnQsttypeDao;
	@Resource
	private HN09SubjectDao hnSubjectDao;
	public List<Hn09Qsttype> List(int pageint, int pagesize) {
		return hnQsttypeDao.List(dp,pageint,pagesize);
	}
	public int Listsize() {
		return hnQsttypeDao.Listsize(dp);
	}
	public List<Map<String, Object>> KmList() {
		return hnSubjectDao.list(dp);
	}
	public boolean save(Hn09Qsttype hnQsttype) {
		//当修改班级标识时当前班级学生的班级标识需要更新

		//添加班级时需要判断添加的班级标识是否和现有标识冲突
		return hnQsttypeDao.Save(dp, hnQsttype);
	}

	public Hn09Qsttype SingleClass(Hn09Qsttype m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("id", m.getHn09QsttpId()));
		dp.setParams(params);
		return hnQsttypeDao.SingleStudent(dp);
	}
}
