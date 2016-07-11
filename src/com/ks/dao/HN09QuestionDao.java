package com.ks.dao;

import java.util.List;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.ks.common.PageList;
import com.ks.pojo.Hn09Answer;
import com.ks.pojo.Hn09Question;
@Scope("prototype")
@Repository
public class HN09QuestionDao {

	public PageList<Map<String, Object>> list(DataProvider dp,int pageint ,int pagesize) {
		return new PageList<Map<String, Object>>(dp.EntityList("from Hn09Question", pageint, pagesize),dp.EntityListSize("select count(0) from Hn09Question"));
	}
	public List<Hn09Question> list1(DataProvider dp,int pageint ,int pagesize) {
		String hql="from Hn09Question";
		return dp.EntityList(hql,pageint,pagesize);
	}
	public boolean Save( DataProvider dp,Hn09Question hnQuestion) {
		return dp.SaveEntity(hnQuestion);
	}

	public Hn09Question SingleQuestion(DataProvider dp) {
		return dp.SingleEntity("from Hn09Question where hn09QstId=:id");
	}
	
	public List<Hn09Answer> Answerlist(DataProvider dp) {
		return dp.EntityList("select a.hn09AskContent as hn09AskContent, a.hn09AskId as hn09AskId from Hn09Answer a left join a.hn09Question s where s.hn09QstId=:qstid");
	}
	public boolean SaveAnswer(List<Hn09Answer> list ,DataProvider dp) {
		return dp.SaveEntitys(list);
	}
	
	/**
	 * 随机抽取问题
	 * @param dp
	 * @return 返回问题列表 查询条件 问题标识，班级ID
	 */
	public List<Hn09Question> QuestionList(DataProvider dp) {
		return dp.EntityList("SELECT * FROM hn09_question q WHERE q.hn09_qst_flag=:flg and q.hn09_qst_sbjid=:subid ORDER BY RAND() LIMIT :count",Hn09Question.class);
	}
	
}
