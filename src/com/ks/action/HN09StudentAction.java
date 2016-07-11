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
import com.ks.pojo.Hn09Student;
import com.ks.service.HN09ClassSrvie;
import com.ks.service.HN09StudentSrvie;

@SuppressWarnings("serial")
@Scope("prototype")
// bean的生成方式
@Controller
// spring注解
@ParentPackage("default")
// sruts默认继承包
@Namespace("/student")
// 命名空间
public class HN09StudentAction extends BaseAction {
	@Resource
	private HN09StudentSrvie hn09StudentSrvie;
	@Resource
	private HN09ClassSrvie hn09ClassSrvie;
	@Resource
	public KsJsonResult msg;
	private Hn09Student student;
	private List<Map<String, Object>> list;
	private long record;
	private int pageindex = 1;
	private String lis;
	private int pagesize = 10;

	@Action(value = "list", results = { @Result(name = "ok", location="list.jsp") })
	public String list() {
		PageList<Map<String, Object>> pl = hn09StudentSrvie.list(pageindex,
				pagesize);
		setRecord(pl.getRecord());
		return "ok";
	}

	@Action(value = "json", results = { @Result(name = "ok", type = "json", params = {
			"root", "lis" }) })
	public String jsons() {
		PageList<Map<String, Object>> pl = hn09StudentSrvie.list(pageindex,pagesize);
		setLis(JsonUlit.object2json(pl.getList()));
		setRecord(pl.getRecord());
		return "ok";
	}
	@Action(value = "save", results = { @Result(name = "ok", type="json",params={"root","m"}) })
public String  save() {

			student.setHn09StuPwd("123456");
			if (hn09StudentSrvie.save(student)) {
				msg.setMsgs("操作成功");
			}else {
				msg.setMsgs("操作失败");
			}
			JSONObject jsonObject =JSONObject.fromObject(msg);
	        setM(jsonObject.toString());
	return "ok";
}
	@Action(value = "update", results = { @Result(name = "ok", type="json",params={"root","m"}) })
	public String  updatepwd() {
				if (hn09StudentSrvie.SavePwd(student)) {
					msg.setMsgs("操作成功");
				}else {
					msg.setMsgs("操作失败");
				}
				JSONObject jsonObject =JSONObject.fromObject(msg);
		        setM(jsonObject.toString());
		return "ok";
	}
	@Action(value = "list_model", results = { @Result(name = "ok", location="list_model.jsp") })
	public String list_model() {
		List<Map<String, Object>> pls= hn09ClassSrvie.ClsList();
		setList(pls);
		if (student==null) {
			
		}else {
			student= hn09StudentSrvie.SingleStudent(student);
		}
		return"ok";
	}
	@Action(value = "list_model_pwd", results = { @Result(name = "ok", location="list_model_pwd.jsp") })
	public String list_model_pwd() {
		    student=(Hn09Student) session.get("user");
			student= hn09StudentSrvie.SingleStudent(student);
		return"ok";
	}
//[start]
	public List<Map<String, Object>> getList() {
		return list;
	}

	public void setList(List<Map<String, Object>> list) {
		this.list = list;
	}
	public String getLis() {
		return lis;
	}

	public void setLis(String lis) {
		this.lis = lis;
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

	public Hn09Student getStudent() {
		return student;
	}

	public void setStudent(Hn09Student student) {
		this.student = student;
	}
//[end]
}
