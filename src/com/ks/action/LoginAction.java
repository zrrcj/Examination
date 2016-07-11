package com.ks.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
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
import com.ks.common.Time;
import com.ks.pojo.Hn09Class;
import com.ks.pojo.Hn09Plain;
import com.ks.pojo.Hn09PlainDtl;
import com.ks.pojo.Hn09Qstpaper;
import com.ks.pojo.Hn09QstpaperDtl;
import com.ks.pojo.Hn09Question;
import com.ks.pojo.Hn09Student;
import com.ks.pojo.Hn09Subject;
import com.ks.service.HN09QstpaperSrvie;
import com.ks.service.LoginSrvie;

@SuppressWarnings("serial")
@Scope("prototype")
// bean的生成方式
@Controller
// spring注解
@ParentPackage("default")
// sruts默认继承包
@Namespace("/")
// 命名空间
public class LoginAction extends BaseAction {
	@Resource
	private LoginSrvie loginSrvie;
	@Resource
	private HN09QstpaperSrvie hnQstpaperSrvie;

	private Hn09Student a;
	private String username;
	private String securityCode;
	private String msg;
	private List<Hn09Plain> plist;
	private Hn09Plain hnPlain;
	private Hn09Qstpaper hnQstpaper;

	// [start]

	public Hn09Qstpaper getHnQstpaper() {
		return hnQstpaper;
	}

	public void setHnQstpaper(Hn09Qstpaper hnQstpaper) {
		this.hnQstpaper = hnQstpaper;
	}

	public String getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	private String password;

	public Hn09Student getA() {
		return a;
	}

	public void setA(Hn09Student a) {
		this.a = a;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public List<Hn09Plain> getPlist() {
		return plist;
	}

	public void setPlist(List<Hn09Plain> plist) {
		this.plist = plist;
	}

	public Hn09Plain getHnPlain() {
		return hnPlain;
	}

	public void setHnPlain(Hn09Plain hnPlain) {
		this.hnPlain = hnPlain;
	}

	// [end]
	// 默认入口
	@Action(value = "login", results = { @Result(name = "ok", location = "login2.jsp") })
	public String logins() {
		session.remove("user");
		return "ok";
	}

	// 判断教师或学生登陆
	@Action(value = "home", results = {
			@Result(name = "ok", location = "index2.jsp"),
			@Result(name = "oks", location = "index.jsp") })
	public String hom() {
		a = (Hn09Student) session.get("user");
		if (a.getHn09StuNo().equals("admin")) {
			return "oks";
		} else {
			Hn09Class cls = loginSrvie.SingleCls(a.getHn09StuClsflag());
			setPlist(loginSrvie.PlainList(cls.getHn09ClsName()));
			session.put("cls", cls);
			return "ok";
		}

	}

	// 登陆逻辑
	@Action(value = "Home", results = { @Result(name = "ok", type = "json", params = {
			"root", "msg" }) })
	public String index() {
		KsJsonResult jsonResult = new KsJsonResult();
		String serverCode = (String) session.get("SESSION_SECURITY_CODE");
		if (!serverCode.equals(securityCode)) {
			jsonResult.setMsgs("验证码错误");
		} else {
			a = loginSrvie.login(a);
			if (a != null) {
				session.put("user", a);
				jsonResult.setUrl("home.action");
			} else {
				jsonResult.setMsgs("密码或用户名错误");
			}
		}
		setMsg(getJson(jsonResult));
		return "ok";
	}

	@Action(value = "welcome", results = { @Result(name = "ok", location = "welcome.jsp") })
	public String welcome() {

		return "ok";
	}
	@Action(value = "stuwelcome", results = { @Result(name = "ok", location = "stuwelcome.jsp") })
	public String stuwelcome() {
		a = (Hn09Student) session.get("user");
		Hn09Class cls = loginSrvie.SingleCls(a.getHn09StuClsflag());
		setPlist(loginSrvie.PlainList(cls.getHn09ClsName()));
		//session.put("cls", cls);
		return "ok";
	}
	// 开始考试
	@Action(value = "ask", results = { @Result(name = "ok", type = "json", params = {"root", "msg" }) })
	public String ask() {
		KsJsonResult jsonResult = new KsJsonResult();//创建json数据
		a = (Hn09Student) session.get("user");//获取学生
		Date ontimeDate = new Date();//获取当前时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");//格式化时间
		String dates = sdf.format(ontimeDate);//获取年月日
		String cls = ((Hn09Class) session.get("cls")).getHn09ClsName();//获取学生的当前班级
		SimpleDateFormat sdfs = new SimpleDateFormat("HH:mm");
		String time = sdfs.format(ontimeDate);//获取小时分钟
		hnPlain = loginSrvie.SinglePlain(time, cls, dates,new Time().getMonth());//获取考试安排
		if (hnPlain != null) {//判断当前学生是否有考试安排
			session.put("plain", hnPlain);
			Hn09Qstpaper qstpaper = hnQstpaperSrvie.SinglePaper(hnPlain.getHn09PlnId(), dates,a.getHn09StuNo(),hnPlain.getHn09PlnSubject());//获取学生的试卷
			if (qstpaper != null) {//判断当前学生是否有现成的试卷
				jsonResult.setMsgs("当前考试已进行，不允许重复考试，如出现错误请联系管理员，本页面将自动转向答题页面");
				jsonResult.setUrl("onask.action");
			} else {
				Hn09Subject subject = loginSrvie.SingleSubject(hnPlain.getHn09PlnSubject());
				Hn09Qstpaper hnQstpaper = new Hn09Qstpaper();
				hnQstpaper.setHn09QprClsname(cls);// 班级名称
				hnQstpaper.setHn09QprPlinid(hnPlain.getHn09PlnId());// 考试安排ID
				hnQstpaper.setHn09QprName(hnPlain.getHn09PlnSubject());// 添加科目名称
				hnQstpaper.setHn09QprBegin(hnPlain.getHn09PlnBegin());// 开始答题时间
				hnQstpaper.setHn09QprEnd(hnPlain.getHn09PlnEnd());// 考试结束时间
				hnQstpaper.setHn09QprNo(a.getHn09StuNo());// 添加考生号
				hnQstpaper.setHn09QprStuname(a.getHn09StuName());// 学生姓名
				hnQstpaper.setHn09QprScore(0.00);// 添加总分
				hnQstpaper.setHn09QprDate(hnPlain.getHn09PlnDate());// 考试日期
				hnQstpaper.setHn09QprIsno("否");// 是否缺考
				Set<Hn09PlainDtl> dtls = hnPlain.getHn09PlainDtls();// 考试安排明细集合
				Set<Hn09QstpaperDtl> qSet = new HashSet<Hn09QstpaperDtl>();
				for (Hn09PlainDtl dtl : dtls) {
					List<Hn09Question> questions = loginSrvie.QuestionList(dtl.getHn09PlndtlFlag(), subject.getHn09SbjId(),dtl.getHn09PlndtlCount());// 抽取问题
					int i = 1;
					for (Hn09Question question : questions) {
						Hn09QstpaperDtl qsdtDtl = new Hn09QstpaperDtl();
						qsdtDtl.setHn09Question(question);// 考题
						qsdtDtl.setHn09Qstpaper(hnQstpaper);// 试卷
						qsdtDtl.setHn09QprdtlNo(i);// 题号
						qsdtDtl.setHn09QprdtlAsk(question.getHn09QstAsk());// 问题题目
						qsdtDtl.setHn09QprdtlFlag(question.getHn09QstFlag());// 题型标识
						qsdtDtl.setHn09QprdtlScore(dtl.getHn09PlndtlPer());//每题分数
						qSet.add(qsdtDtl);
						i++;
					}
				}
				hnQstpaper.setHn09QstpaperDtls(qSet);
				hnQstpaperSrvie.save(hnQstpaper);
				jsonResult.setUrl("onask.action");
			}
		} else {
			jsonResult.setMsgs("未到考试时间");
		}
		setMsg(getJson(jsonResult));
		return "ok";
	}

	@Action(value = "onask", results = { @Result(name = "ok", location = "ask.jsp") })
	public String onask() {
		try {
			a = (Hn09Student) session.get("user");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		Hn09Plain plainid = (Hn09Plain) session.get("plain");
		hnQstpaper = hnQstpaperSrvie.SingleQstpaper(plainid.getHn09PlnId(),a.getHn09StuNo(), plainid.getHn09PlnBegin(),plainid.getHn09PlnSubject());//获得当前学生的试卷
		return "ok";
	}

	// 锁屏界面
	@Action(value = "lock", results = { @Result(name = "ok", location = "lock.jsp") })
	public String lock() {
		a = (Hn09Student) session.get("user");
		session.clear();
		return "ok";
	}

	@Action(value = "lockin", results = { @Result(name = "ok", type = "json", params = {
			"root", "msg" }) })
	public String lockin() {
		KsJsonResult jsonResult = new KsJsonResult();
		a = loginSrvie.login(a);
		if (a != null) {
			session.put("user", a);
			jsonResult.setUrl("home.action");
		} else {
			jsonResult.setMsgs("密码错误");
		}
		setMsg(getJson(jsonResult));
		return "ok";
	}

}
