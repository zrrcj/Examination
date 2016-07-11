package com.ks.action;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
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
import com.ks.pojo.Hn09Plain;
import com.ks.pojo.Hn09PlainDtl;
import com.ks.pojo.Hn09Qsttype;
import com.ks.pojo.Hn09Subject;
import com.ks.service.HN09PlainSrvie;

@SuppressWarnings("serial")
@Scope("prototype")
// bean的生成方式
@Controller
// spring注解
@ParentPackage("default")
// sruts默认继承包
@Namespace("/plain")
// 命名空间
public class HN09PlainAction extends BaseAction{
	@Resource
	private HN09PlainSrvie hnPlainSrvie;
	@Resource
	public KsJsonResult msg;
	private Hn09Plain hnPlain;
	private Hn09Subject subject;
	private Hn09PlainDtl hnPlainDtl;
	private long record;
	private int pageindex = 1;
	private int pagesize = 10;
	private List<Hn09Plain>list;
	private List<Map<String, Object>> kmlist;
	private List<Map<String, Object>>Clist;
	private List <Hn09Qsttype> Tlist;

	@Action(value = "list", results = { @Result(name = "ok", location = "list.jsp") })
	public String list() {
		setRecord(hnPlainSrvie.Listsize());
		return "ok";
	}
	@Action(value = "list_table", results = { @Result(name = "ok", location="list_table.jsp")})
	public String list_table() {
		setList(hnPlainSrvie.List(pageindex,pagesize));
		setRecord(hnPlainSrvie.Listsize());
		return "ok";
	}
	@Action(value = "save", results = { @Result(name = "ok", type="json",params={"root","m"})})
public String  save() {
		if (hnPlainSrvie.save(hnPlain)) {
			msg.setMsgs("操作成功");
		}	else {
			msg.setMsgs("操作失败");
		}
        setM(getJson(msg));
	return "ok";
}
	@Action(value = "list_model", results = { @Result(name = "ok", location="list_model.jsp") })
	public String list_model() {
		setKmlist(hnPlainSrvie.KmList());
		setClist(hnPlainSrvie.ClsList());
		if (hnPlain==null) {
			
		}else {
			hnPlain= hnPlainSrvie.SingleHnplan(hnPlain);
		}
		return"ok";
	}
	
	@Action(value = "savedtl", results = { @Result(name = "ok", type="json",params={"root","m"})})
	public String  savedtl() {
		hnPlain=hnPlainSrvie.SingleHnplan(hnPlain);
	   Set<Hn09PlainDtl> dtls=new HashSet<Hn09PlainDtl>();
	   hnPlainDtl.setHn09Plain(hnPlain);
	   if (hnPlainDtl.getHn09PlndtlFlag().equals("X")) {
		hnPlainDtl.setHn09PlndtlQsttype("选择题");
	}else if (hnPlainDtl.getHn09PlndtlFlag().equals("P")) {
		hnPlainDtl.setHn09PlndtlQsttype("判断题");
	}else if (hnPlainDtl.getHn09PlndtlFlag().equals("T")) {
		hnPlainDtl.setHn09PlndtlQsttype("填空题");
	}else if (hnPlainDtl.getHn09PlndtlFlag().equals("J")) {
		hnPlainDtl.setHn09PlndtlQsttype("简答题");
	}else if (hnPlainDtl.getHn09PlndtlFlag().equals("Z")) {
		hnPlainDtl.setHn09PlndtlQsttype("综合题");
	}
	   dtls.add(hnPlainDtl);
		hnPlain.setHn09PlainDtls(dtls);
			if (hnPlainSrvie.save(hnPlain)) {
				msg.setMsgs("操作成功");
			}	else {
				msg.setMsgs("操作失败");
			}
	        setM(getJson(msg));
		return "ok";
	}
	@Action(value = "list_model_dtl", results = { @Result(name = "ok", location="list_model_dtl.jsp") })
	public String list_model_dtl() {
		hnPlain=hnPlainSrvie.SingleHnplan(hnPlain);
		subject=hnPlainSrvie.SingleSubject(hnPlain.getHn09PlnSubject());
		List<Hn09Qsttype> l = hnPlainSrvie.QsttypeList(subject.getHn09SbjId());
		setTlist(l);
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
	public List<Map<String, Object>> getKmlist() {
		return kmlist;
	}
	public void setKmlist(List<Map<String, Object>> kmlist) {
		this.kmlist = kmlist;
	}
	public List<Hn09Plain> getList() {
		return list;
	}
	public void setList(List<Hn09Plain> list) {
		this.list = list;
	}
	public Hn09Plain getHnPlain() {
		return hnPlain;
	}
	public void setHnPlain(Hn09Plain hnPlain) {
		this.hnPlain = hnPlain;
	}
	//[end]
	public List<Map<String, Object>> getClist() {
		return Clist;
	}
	public void setClist(List<Map<String, Object>> clist) {
		Clist = clist;
	}
	public Hn09Subject getSubject() {
		return subject;
	}
	public void setSubject(Hn09Subject subject) {
		this.subject = subject;
	}
	public List <Hn09Qsttype> getTlist() {
		return Tlist;
	}
	public void setTlist(List <Hn09Qsttype> tlist) {
		Tlist = tlist;
	}
	public Hn09PlainDtl getHnPlainDtl() {
		return hnPlainDtl;
	}
	public void setHnPlainDtl(Hn09PlainDtl hnPlainDtl) {
		this.hnPlainDtl = hnPlainDtl;
	}
	
}
