package com.ks.action;

import java.util.List;
import java.util.Map;

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
import com.ks.pojo.Hn09Subject;
import com.ks.service.HN09SubjectSrvie;

/**
 * @author zrrcj
 *@author 科目
 */
@SuppressWarnings("serial")
@Scope("prototype")
// bean的生成方式
@Controller
// spring注解
@ParentPackage("default")
// sruts默认继承包
@Namespace("/subject")
// 命名空间
public class HN09SubjectAction extends BaseAction {
	@Resource
	private HN09SubjectSrvie hnSubjectSrvie;
	@Resource
	public KsJsonResult msg;
	private Hn09Subject subject;
	private long record;
	private int pageindex = 1;
	private int pagesize = 10;
	private String lis;
	private List<Map<String , Object>> list;

	@Action(value = "list", results = { @Result(name = "ok", location = "list.jsp") })
	public String list() {
		PageList<Map<String, Object>> pl = hnSubjectSrvie.list(pageindex, pagesize);
		setRecord(pl.getRecord());
		return "ok";
	}

	@Action(value = "json", results = { @Result(name = "ok", type = "json", params = {
			"root", "lis" }) })
	public String jsons() {
		PageList<Map<String, Object>> pl = hnSubjectSrvie.list(pageindex,pagesize);
		setLis(JsonUlit.object2json(pl.getList()));
		setRecord(pl.getRecord());
		return "ok";
	}
	
	@Action(value = "list_table", results = { @Result(name = "ok", location="list_table.jsp")})
	public String list_table() {
		PageList<Map<String, Object>> pl = hnSubjectSrvie.list(pageindex,pagesize);
		setList(pl.getList());
		setRecord(pl.getRecord());
		return "ok";
	}
	
	@Action(value = "save", results = { @Result(name = "ok", type="json",params={"root","m"})})
public String  save() {
		if (hnSubjectSrvie.save(subject)) {
			msg.setMsgs("操作成功");
		}	else {
			msg.setMsgs("操作失败");
		}
		JSONObject jsonObject =JSONObject.fromObject(msg);
        setM(jsonObject.toString());
	return "ok";
}
	@Action(value = "list_model", results = { @Result(name = "ok", location="list_model.jsp") })
	public String list_model() {
		if (subject==null) {
			
		}else {
			subject= hnSubjectSrvie.SingleSubject(subject);
		}
		return"ok";
	}

	//[start]
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
	public Hn09Subject getSubject() {
		return subject;
	}

	public void setSubject(Hn09Subject subject) {
		this.subject = subject;
	}

	public List<Map<String , Object>> getList() {
		return list;
	}

	public void setList(List<Map<String , Object>> list) {
		this.list = list;
	}
	//[end]
}
