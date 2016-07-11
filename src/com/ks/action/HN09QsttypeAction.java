package com.ks.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ks.common.BaseAction;
import com.ks.common.KsJsonResult;
import com.ks.pojo.Hn09Qsttype;
import com.ks.service.HN09QsttypeSrvie;

@SuppressWarnings("serial")
@Scope("prototype")
// bean的生成方式
@Controller
// spring注解
@ParentPackage("default")
// struts默认继承包
@Namespace("/qsttype")
// 命名空间
public class HN09QsttypeAction extends BaseAction {
	@Resource
	private HN09QsttypeSrvie hnQsttypeSrvie;
	@Resource
	public KsJsonResult msg;
	private Hn09Qsttype hnQsttype;
	private long record;
	private int pageindex = 1;
	private int pagesize = 10;
	private List<Hn09Qsttype>list;
	private List<Map<String, Object>> kmlist;

	@Action(value = "list", results = { @Result(name = "ok", location = "list.jsp") })
	public String list() {
		setRecord(hnQsttypeSrvie.Listsize());
		return "ok";
	}
	@Action(value = "list_table", results = { @Result(name = "ok", location="list_table.jsp")})
	public String list_table() {
		setList(hnQsttypeSrvie.List(pageindex,pagesize));
		setRecord(hnQsttypeSrvie.Listsize());
		return "ok";
	}
	@Action(value = "save", results = { @Result(name = "ok", type="json",params={"root","m"})})
public String  save() {
		if (hnQsttypeSrvie.save(hnQsttype)) {
			msg.setMsgs("操作成功");
		}	else {
			msg.setMsgs("操作失败");
		}
        setM(getJson(msg));
	return "ok";
}
	@Action(value = "list_model", results = { @Result(name = "ok", location="list_model.jsp") })
	public String list_model() {
		setKmlist(hnQsttypeSrvie.KmList());
		if (hnQsttype==null) {
			
		}else {
			hnQsttype= hnQsttypeSrvie.SingleClass(hnQsttype);
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

	//[end]

	public Hn09Qsttype getHnQsttype() {
		return hnQsttype;
	}

	public void setHnQsttype(Hn09Qsttype hnQsttype) {
		this.hnQsttype = hnQsttype;
	}

	public List<Hn09Qsttype> getList() {
		return list;
	}

	public void setList(List<Hn09Qsttype> list) {
		this.list = list;
	}
	public List<Map<String, Object>> getKmlist() {
		return kmlist;
	}
	public void setKmlist(List<Map<String, Object>> kmlist) {
		this.kmlist = kmlist;
	}
}
