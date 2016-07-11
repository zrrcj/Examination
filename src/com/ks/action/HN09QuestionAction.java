package com.ks.action;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ks.common.BaseAction;
import com.ks.common.JsonUlit;
import com.ks.common.KsJsonResult;
import com.ks.common.PageList;
import com.ks.pojo.Hn09Answer;
import com.ks.pojo.Hn09Qsttype;
import com.ks.pojo.Hn09Question;
import com.ks.pojo.Hn09Selectitem;
import com.ks.pojo.Hn09Subject;
import com.ks.service.HN09QuestionSrvie;

/**
 * @author zrrcj
 * @author 科目
 */
@SuppressWarnings("serial")
@Scope("prototype")
// bean的生成方式
@Controller
// spring注解
@ParentPackage("default")
// sruts默认继承包
@Namespace("/question")
// 命名空间
public class HN09QuestionAction extends BaseAction {
	@Resource
	private HN09QuestionSrvie hnQuestionSrvie;
	@Resource
	public KsJsonResult msg;
	private Hn09Question subject;
	private Hn09Subject sm;
	private String editorValue;
	private long record;
	private int pageindex = 1;
	private int pagesize = 10;
	private String lis;
	private List<Map<String, Object>> list;
	private List<Hn09Answer> hnAnswer=new LinkedList<Hn09Answer>();
	private List<Hn09Selectitem> hnSelectitems =new LinkedList<Hn09Selectitem>();
	private List<Hn09Question> question;
	private List<Hn09Qsttype> qsttype;
	private List<Hn09Subject> subjects;
	Set<Hn09Answer> Answers = new HashSet<Hn09Answer>(0);
	//返回列表页面
	@Action(value = "list", results = { @Result(name = "ok", location = "list.jsp") })
	public String list() {
		PageList<Map<String, Object>> pl = hnQuestionSrvie.list(pageindex,
				pagesize);
		setRecord(pl.getRecord());
		return "ok";
	}
	//返回JSON数据
	@Action(value = "json", results = { @Result(name = "ok", type = "json", params = {
			"root", "lis" }) })
	public String jsons() {
		PageList<Map<String, Object>> pl = hnQuestionSrvie.list(pageindex,
				pagesize);
		setLis(JsonUlit.object2json(pl.getList()));
		setRecord(pl.getRecord());
		return "ok";
	}
	//返回列表
	@Action(value = "list_table", results = { @Result(name = "ok", location = "list_table.jsp") })
	public String list_table() {
		PageList<Map<String, Object>> pl = hnQuestionSrvie.list(pageindex,
				pagesize);
		List<Hn09Question> l = hnQuestionSrvie.list1(pageindex, pagesize);
		setQuestion(l);
		setRecord(pl.getRecord());
		return "ok";
	}
	//修改or添加
	@Action(value = "save", results = { @Result(name = "ok", type = "json", params = {"root", "m" }) })
	public String save() {
		subject.setHn09QstAsk(editorValue);
	if (subject.getHn09QstFlag().equals("TX")) {
		msg.setMsgs("操作失败");
	}else {
		if (subject.getHn09QstFlag().equals("X")) {
			Set<Hn09Selectitem> Selectitems = new HashSet<Hn09Selectitem>(0);
			Selectitems.addAll(hnSelectitems);
			for (Hn09Selectitem item : Selectitems) {
				item.setHn09Question(subject);
			}
			subject.setHn09Selectitems(Selectitems);
		    loadask();//给答案赋值
		    subject.setHn09QstCount(1);//答案数量
		}
		else if (subject.getHn09QstFlag().equals("P")) {
			 loadask();//给答案赋值
			    subject.setHn09QstCount(1);//答案数量
		}
		else if (subject.getHn09QstFlag().equals("T")) {
			 loadask();//给答案赋值
		}
		else if (subject.getHn09QstFlag().equals("J")) {
			 loadask();//给答案赋值
		}else if (subject.getHn09QstFlag().equals("Z")) {
			 loadask();//给答案赋值
		}
		if (hnQuestionSrvie.save(subject)) {
			msg.setMsgs("操作成功");
		} else {
			msg.setMsgs("操作失败");
		}	}
		JSONObject jsonObject = JSONObject.fromObject(msg);
		setM(jsonObject.toString());
		return "ok";
	}
	//返回添加修改窗体
	@Action(value = "list_model", results = { @Result(name = "ok", location = "list_model.jsp") })
	public String list_model() {
		setList(hnQuestionSrvie.KmList());//获取科目
		if (subject == null) {

		} else {
			subject = hnQuestionSrvie.SingleSubject(subject);
		}
		return "ok";
	}
	//返回答案
	@Action(value = "list_answer", results = { @Result(name = "ok", location = "list_answer.jsp") })
	public String list_answer() {
		setHnAnswer(hnQuestionSrvie.Answerlist(subject));
		return "ok";
	}
	//更新答案
	@Action(value = "list_answer_save", results = { @Result(name = "ok",  type = "json", params = {"root", "m" }) })
	public String list_answer_save() {
		subject = hnQuestionSrvie.SingleSubject(subject);
		for (Hn09Answer hn09Answer : hnAnswer) {
			hn09Answer.setHn09Question(subject);
		}
		if (hnQuestionSrvie.SaveAnswer(hnAnswer)) {
			msg.setMsgs("操作成功");
		} else {
			msg.setMsgs("操作失败");
		}
		setM(getJson(msg));
		return "ok";
	}
	//获取题型
	@Action(value = "list_model_tx", results = { @Result(name = "ok", location = "list_model_tx.jsp") })
	public String list_model_tx() {
		subject = hnQuestionSrvie.SingleSubject(subject);
		List<Hn09Qsttype> l = hnQuestionSrvie.QsttypeList(sm.getHn09SbjId());
		setQsttype(l);
		return "ok";
	}
     //选择题
	@Action(value = "list_model_x", results = { @Result(name = "ok", location = "list_model_X.jsp") })
	public String list_model_x() {
	
		return "ok";
	}
	
    //判断题
	@Action(value = "list_model_p", results = { @Result(name = "ok", location = "list_model_P.jsp") })
	public String list_model_p() {
	
		return "ok";
	}
	//综合简答
	@Action(value = "list_model_jz", results = { @Result(name = "ok", location = "list_model_Jz.jsp") })
	public String list_model_jz() {
	
		return "ok";
	}
	//填空
	@Action(value = "list_model_t", results = { @Result(name = "ok", location = "list_model_T.jsp") })
	public String list_model_t() {
	
		return "ok";
	}
	
	private void loadask() {
		if (hnAnswer.size()>0) {
			Answers.addAll(hnAnswer);
		    for (Hn09Answer item : Answers) {
				item.setHn09Question(subject);
			}
		    subject.setHn09Answers(Answers);
		}
		
	}
	// [start]
	public List<Hn09Answer> getHnAnswer() {
		return hnAnswer;
	}
	public void setHnAnswer(List<Hn09Answer> hnAnswer) {
		this.hnAnswer = hnAnswer;
	}
	public List<Hn09Selectitem> getHnSelectitems() {
		return hnSelectitems;
	}
	public void setHnSelectitems(List<Hn09Selectitem> hnSelectitems) {
		this.hnSelectitems = hnSelectitems;
	}
	public String getEditorValue() {
		return editorValue;
	}
	public void setEditorValue(String editorValue) {
		this.editorValue = editorValue;
	}
	public int getPageindex() {
		return pageindex;
	}

	public void setPageindex(int pageindex) {
		this.pageindex = pageindex;
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public long getRecord() {
		return record;
	}

	public void setRecord(long record) {
		this.record = record;
	}

	public String getLis() {
		return lis;
	}

	public Hn09Question getSubject() {
		return subject;
	}

	public void setSubject(Hn09Question subject) {
		this.subject = subject;
	}

	public void setLis(String lis) {
		this.lis = lis;
	}

	public List<Map<String, Object>> getList() {
		return list;
	}

	public void setList(List<Map<String, Object>> list) {
		this.list = list;
	}
	public List<Hn09Question> getQuestion() {
		return question;
	}

	public void setQuestion(List<Hn09Question> question) {
		this.question = question;
	}

	public Hn09Subject getSm() {
		return sm;
	}

	public void setSm(Hn09Subject sm) {
		this.sm = sm;
	}

	public List<Hn09Qsttype> getQsttype() {
		return qsttype;
	}

	public void setQsttype(List<Hn09Qsttype> qsttype) {
		this.qsttype = qsttype;
	}
	// [end]
	public List<Hn09Subject> getSubjects() {
		return subjects;
	}
	public void setSubjects(List<Hn09Subject> subjects) {
		this.subjects = subjects;
	}
}
