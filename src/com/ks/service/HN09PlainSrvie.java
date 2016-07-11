package com.ks.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.ks.dao.DataParameter;
import com.ks.dao.DataProvider;
import com.ks.dao.HN09ClassDao;
import com.ks.dao.HN09PlainDao;
import com.ks.dao.HN09QsttypeDao;
import com.ks.dao.HN09SubjectDao;
import com.ks.pojo.Hn09Plain;
import com.ks.pojo.Hn09Qsttype;
import com.ks.pojo.Hn09Subject;

@Scope("prototype")
@Service
public class HN09PlainSrvie {
	@Resource
	private DataProvider dp;
	@Resource
	private HN09PlainDao hnPlainDao;
	@Resource
	private HN09SubjectDao hnSubjectDao;
	@Resource
	private HN09ClassDao hn09ClassDao;
	@Resource
	private HN09QsttypeDao hnQsttypeDao;
	public List<Hn09Plain> List(int pageint, int pagesize) {
		return hnPlainDao.List(dp,pageint,pagesize);
	}
	public int Listsize() {
		return hnPlainDao.Listsize(dp);
	}
	public List<Map<String, Object>> ClsList() {
		return hn09ClassDao.list(dp);
	}
	public List<Map<String, Object>> KmList() {
		return hnSubjectDao.list(dp);
	}
	public boolean save(Hn09Plain hnPlain) {
		return hnPlainDao.Save(dp, hnPlain);
	}

	public Hn09Plain SingleHnplan(Hn09Plain m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("id", m.getHn09PlnId()));
		dp.setParams(params);
		return hnPlainDao.SingleStudent(dp);
	}
	/**
	 * @param Qsttpid 题型ID
	 * @return
	 */
	public List<Hn09Qsttype> QsttypeList(int Qsttpid) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("QsttpId", Qsttpid));
		dp.setParams(params);
		return hnQsttypeDao.list(dp);
	}
	/**
	 * @param m 班级名称
	 * @return 
	 */
	public Hn09Subject SingleSubject(String m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("hn09SbjName", m));
		dp.setParams(params);
		return hnSubjectDao.SubjectList(dp);
	}
}
