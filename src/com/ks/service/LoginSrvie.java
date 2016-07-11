package com.ks.service;

import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.ks.dao.DataParameter;
import com.ks.dao.DataProvider;
import com.ks.dao.HN09ClassDao;
import com.ks.dao.HN09PlainDao;
import com.ks.dao.HN09QuestionDao;
import com.ks.dao.HN09SubjectDao;
import com.ks.pojo.Hn09Class;
import com.ks.pojo.Hn09Plain;
import com.ks.pojo.Hn09Question;
import com.ks.pojo.Hn09Student;
import com.ks.pojo.Hn09Subject;

@Scope("prototype")
@Service
public class LoginSrvie {
	@Resource
	private DataProvider dp;
	@Resource
	private HN09PlainDao hnPlainDao;
	@Resource
	private HN09ClassDao hncClassDao;
	@Resource
	private HN09QuestionDao hnQuestionDao;
	@Resource
	private HN09SubjectDao hnSubjectDao;

	public  Hn09Student login(Hn09Student m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("no", m.getHn09StuNo()));
		params.add(new DataParameter("pwd", m.getHn09StuPwd()));
		dp.setParams(params);
		return dp.SingleEntity("from Hn09Student where hn09StuNo=:no and hn09StuPwd=:pwd");
	}
	
	/**
	 * @param cls班级名称
	 * @return 返回考试安排列表
	 */
	public List<Hn09Plain> PlainList(String cls) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("cls", cls));
		dp.setParams(params);
		return hnPlainDao.List(dp);
	}
	
	/**
	 * @param clsflg 班级标识
	 * @return 返回班级
	 */
	public Hn09Class SingleCls(String clsflg) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("clsflg", clsflg));
		dp.setParams(params);
		return hncClassDao.SingleCls(dp);
	}
	
	/**
	 * @param hn09SbjName 科目名称
	 * @return 返回科目
	 */
	public Hn09Subject SingleSubject(String hn09SbjName) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("hn09SbjName", hn09SbjName));
		dp.setParams(params);
		return hnSubjectDao.SubjectList(dp);
	}
	/**
	 * @param time 当前时间
	 * @param cls 学生所在班级
	 * @param date 当前日期
	 * @param year 学年学期
	 * @return 返回考试详细信息
	 */
	public Hn09Plain SinglePlain(String time ,String cls,String date,String year) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("time", time));
		params.add(new DataParameter("cls", cls));
		params.add(new DataParameter("date", date));
		params.add(new DataParameter("year", year));
		dp.setParams(params);
		return hnPlainDao.SinglePlain(dp);
	}
	
	/**
	 * @param flg 题型标识
	 * @param subid 科目ID
	 * @param count 抽题数量
	 * @return 返回抽取问题列表
	 */
	public List<Hn09Question> QuestionList(String flg ,int subid,int count) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("flg", flg));
		params.add(new DataParameter("subid", subid));
		params.add(new DataParameter("count", count));
		dp.setParams(params);
		return hnQuestionDao.QuestionList(dp);
	}
}
