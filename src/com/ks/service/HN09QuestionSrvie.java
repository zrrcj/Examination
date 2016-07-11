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
import com.ks.dao.HN09QsttypeDao;
import com.ks.dao.HN09QuestionDao;
import com.ks.dao.HN09SubjectDao;
import com.ks.pojo.Hn09Answer;
import com.ks.pojo.Hn09Qsttype;
import com.ks.pojo.Hn09Question;
import com.ks.pojo.Hn09Subject;

@Scope("prototype")
@Service
public class HN09QuestionSrvie {
	@Resource
	private DataProvider dp;
	@Resource
	private HN09QuestionDao hnQuestionDao;
	@Resource
	private HN09SubjectDao hnSubjectDao;
	@Resource
	private HN09QsttypeDao hnQsttypeDao;
//获取科目列表
	public List<Map<String, Object>> KmList() {
		return hnSubjectDao.list(dp);
	}
	public List<Hn09Subject> SubList(int Subid) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("Subid", Subid));
		dp.setParams(params);
		return hnSubjectDao.Sublist(dp);
	}
	/**
	 * @param Qsttpid 科目ID
	 * @return 题型列表
	 */
	public List<Hn09Qsttype> QsttypeList(int Qsttpid) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("QsttpId", Qsttpid));
		dp.setParams(params);
		return hnQsttypeDao.list(dp);
	}
	public PageList<Map<String, Object>> list(int pageint, int pagesize) {
		return hnQuestionDao.list(dp, pageint, pagesize);
	}

	public List<Hn09Question> list1(int pageint, int pagesize) {
		return hnQuestionDao.list1(dp, pageint, pagesize);
	}
	public boolean save(Hn09Question hnQuestion) {
		return hnQuestionDao.Save(dp, hnQuestion);
	}
//返回一个实体
	public Hn09Question SingleSubject(Hn09Question m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("id", m.getHn09QstId()));
		dp.setParams(params);
		return hnQuestionDao.SingleQuestion(dp);
	}
	public List<Hn09Answer> Answerlist(Hn09Question m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("qstid", m.getHn09QstId()));
		dp.setParams(params);
		return hnQuestionDao.Answerlist(dp);
	}
	public boolean SaveAnswer(List<Hn09Answer> list ) {
		return hnQuestionDao.SaveAnswer(list, dp);
	}
}
