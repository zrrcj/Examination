package com.ks.action;

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
import com.ks.pojo.Hn09Class;
import com.ks.service.HN09ClassSrvie;

@SuppressWarnings("serial")
@Scope("prototype")
// bean的生成方式
@Controller
// spring注解
@ParentPackage("default")
// struts默认继承包
@Namespace("/class")
// 命名空间
public class HN09ClassAction extends BaseAction {
	@Resource
	private HN09ClassSrvie hn09ClassSrvie;
	@Resource
	public KsJsonResult msg;
	private Hn09Class hn09Class;
	private long record;
	private int pageindex = 1;
	private int pagesize = 10;
	private String lis;

	@Action(value = "list", results = { @Result(name = "ok", location = "list.jsp") })
	public String list() {
		PageList<Map<String, Object>> pl = hn09ClassSrvie.list(pageindex, pagesize);
		setRecord(pl.getRecord());
		return "ok";
	}

	@Action(value = "json", results = { @Result(name = "ok", type = "json", params = {
			"root", "lis" }) })
	public String jsons() {
		PageList<Map<String, Object>> pl = hn09ClassSrvie.list(pageindex,pagesize);
		setLis(JsonUlit.object2json(pl.getList()));
		setRecord(pl.getRecord());
		return "ok";
	}
	
	@Action(value = "save", results = { @Result(name = "ok", type="json",params={"root","m"})})
public String  save() {
		if (hn09ClassSrvie.save(hn09Class)) {
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
		if (hn09Class==null) {
			
		}else {
			hn09Class= hn09ClassSrvie.SingleClass(hn09Class);
		}
		return"ok";
	}
//[start]属性的get set方法
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

	public Hn09Class getHn09Class() {
		return hn09Class;
	}

	public void setHn09Class(Hn09Class hn09Class) {
		this.hn09Class = hn09Class;
	}
	//[end]
}
