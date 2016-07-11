package com.ks.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ks.common.BaseAction;
import com.ks.common.KsJsonResult;
import com.ks.pojo.Hn09Qstpaper;
import com.ks.pojo.Hn09Student;
import com.ks.service.HN09QstpaperSrvie;

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
@Namespace("/score")
// 命名空间
public class HN09ScoreAction extends BaseAction {
	@Resource
	private HN09QstpaperSrvie hnQstpaperSrvie;
	@Resource
	public KsJsonResult msg;
	private Hn09Student hnStudent;
	private long record;
	private int pageindex = 1;
	private int pagesize = 10;
	private String lis;
	private List<Hn09Qstpaper> list;

	@Action(value = "list", results = { @Result(name = "ok", location = "list.jsp") })
	public String list() {
		return "ok";
	}

	@Action(value = "json", results = { @Result(name = "ok", type = "json", params = {
			"root", "lis" }) })
	public String jsons() {
		return "ok";
	}

	@Action(value = "list_table", results = { @Result(name = "ok", location = "list_table.jsp") })
	public String list_table() {
	     hnStudent= (Hn09Student) session.get("user");
		setList(hnQstpaperSrvie.ListStudent(hnStudent.getHn09StuNo()));
		return "ok";
	}

	@Action(value = "save", results = { @Result(name = "ok", type = "json", params = {
			"root", "m" }) })
	public String save() {

		return "ok";
	}

	@Action(value = "list_model", results = { @Result(name = "ok", location = "list_model.jsp") })
	public String list_model() {

		return "ok";
	}

	// [start]
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

	public void setLis(String lis) {
		this.lis = lis;
	}

	// [end]

	public List<Hn09Qstpaper> getList() {
		return list;
	}

	public void setList(List<Hn09Qstpaper> list) {
		this.list = list;
	}

	public Hn09Student getHnStudent() {
		return hnStudent;
	}

	public void setHnStudent(Hn09Student hnStudent) {
		this.hnStudent = hnStudent;
	}
}
