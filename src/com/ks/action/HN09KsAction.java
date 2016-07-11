package com.ks.action;

import java.util.Set;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ks.common.BaseAction;
import com.ks.common.KsJsonResult;
import com.ks.pojo.Hn09Answer;
import com.ks.pojo.Hn09Qstpaper;
import com.ks.pojo.Hn09QstpaperDtl;
import com.ks.service.HN09QstpaperDtlSrvie;

@SuppressWarnings("serial")
@Scope("prototype")
// bean的生成方式
@Controller
// spring注解
@ParentPackage("default")
// struts默认继承包
@Namespace("/ks")
// 命名空间
public class HN09KsAction extends BaseAction {
	@Resource
	private HN09QstpaperDtlSrvie hnQstpaperDtlSrvie;
	@Resource
	public KsJsonResult msg;
	private Hn09QstpaperDtl hnDtl;
	private String lis;
     //判断学生答题的对错
	@Action(value = "save", results = { @Result(name = "ok", type = "json", params = {
			"root", "lis" }) })
	public String save() {
		Hn09QstpaperDtl hn = hnQstpaperDtlSrvie.SinglePaper(hnDtl.getHn09QprdtlId());//获取学生提交的考题
		Hn09Qstpaper paper=hn.getHn09Qstpaper();//获取当前试卷
		Set<Hn09Answer> hnAnswers=hn.getHn09Question().getHn09Answers();//获取问题的答案
		String[] an=hnDtl.getHn09QprdtlAnswer().split(",");//格式化学生提交的答案
		if (hn.getHn09QprdtlFlag().equals("X")) {//判断题型
			for (Hn09Answer answer : hnAnswers) {
				for (String s : an) {
					if (s.equals(answer.getHn09AskContent())) {//答案比对
						paper.setHn09QprScore(hn.getHn09QprdtlScore()+paper.getHn09QprScore());//向试卷中添加得分
						hn.setHn09QprdtlRealscore(hn.getHn09QprdtlScore());
						hn.setHn09QprdtlStatus("T");//添加考题状态
						hn.setHn09Qstpaper(paper);
						msg.setUrl("1");
					}else {
						hn.setHn09QprdtlStatus("F");
						msg.setUrl("0");
					}
				}
			}
		}else if (hn.getHn09QprdtlFlag().equals("P")) {
			for (Hn09Answer answer : hnAnswers) {
				for (String s : an) {
					if (s.equals(answer.getHn09AskContent())) {
						paper.setHn09QprScore(hn.getHn09QprdtlScore()+paper.getHn09QprScore());
						hn.setHn09QprdtlRealscore(hn.getHn09QprdtlScore());
						hn.setHn09QprdtlStatus("T");
						hn.setHn09Qstpaper(paper);
						msg.setUrl("1");
					}else {
						hn.setHn09QprdtlStatus("F");
						msg.setUrl("0");
					}
				}
			}
		}else{
			boolean flg=false;
			int q=0;
			for (Hn09Answer answer : hnAnswers) {
				for (String s : an) {
					if (s.trim().equals(answer.getHn09AskContent())) {
						double a=hn.getHn09QprdtlScore()/hn.getHn09Question().getHn09QstCount();//获取每个得分点的分数
						paper.setHn09QprScore(a+paper.getHn09QprScore());
						hn.setHn09QprdtlRealscore(a);
						hn.setHn09Qstpaper(paper);
						flg=true;//只要有一个得分正确则置为真
						q++;
					}
				}
			}if (q==hn.getHn09Question().getHn09QstCount()) {//判断正确个数是否全对
				hn.setHn09QprdtlStatus("T");
				msg.setUrl("1");
			}else if (flg) {//判断是否至少答对一个
				hn.setHn09QprdtlStatus("TF");
				msg.setUrl("2");
			}else {
				hn.setHn09QprdtlStatus("F");
				msg.setUrl("0");
			}
		}
		if (hnQstpaperDtlSrvie.save(hn)) {
			msg.setMsgs("操作成功");
		} else {
			msg.setMsgs("操作失败");
		}
		setLis(getJson(msg));
		return "ok";
	}
	/*
	 * 返回学生的成绩
	 * */
	@Action(value = "list_result", results = {
			@Result(name = "ok", location = "list_result.jsp") })
	public String list_result() {
		hnDtl = hnQstpaperDtlSrvie.SinglePaper(hnDtl.getHn09QprdtlId());
		return "ok";
	}
	@Action(value = "list_ask", results = {
			@Result(name = "x", location = "list_ask_x.jsp"),
			@Result(name = "p", location = "list_ask_p.jsp"),
			@Result(name = "t", location = "list_ask_t.jsp"),
			@Result(name = "jz", location = "list_ask_jz.jsp") })
	public String list_model() {
		String a="x";
		hnDtl = hnQstpaperDtlSrvie.SinglePaper(hnDtl.getHn09QprdtlId());
		switch (hnDtl.getHn09QprdtlFlag()) {
		case "X":
			a="x";
			break;
		case "P":
			a="p";
			break;
		case "T":
			a="t";
			break;
		case "J":
			a="jz";
			break;
		case "Z":
			a="jz";
			break;
		default:
			break;
		}
		return a;
	}
	// [start]属性的get set方法

	public String getLis() {
		return lis;
	}

	public void setLis(String lis) {
		this.lis = lis;
	}

	public Hn09QstpaperDtl getHnDtl() {
		return hnDtl;
	}

	public void setHnDtl(Hn09QstpaperDtl hnDtl) {
		this.hnDtl = hnDtl;
	}
	// [end]
}
