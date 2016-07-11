package com.ks.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.ks.dao.DataParameter;
import com.ks.dao.DataProvider;
import com.ks.dao.HN09QstpaperDao;
import com.ks.dao.HN09QstpaperDtlDao;
import com.ks.pojo.Hn09Qstpaper;
import com.ks.pojo.Hn09QstpaperDtl;

@Scope("prototype")
@Service
public class HN09QstpaperSrvie {
	@Resource
	private DataProvider dp;
	@Resource
	private HN09QstpaperDao hnQstpaperDao;
	@Resource
	private HN09QstpaperDtlDao hnQstpaperDtlDao;

	
	public List<Hn09Qstpaper> List(int pageint, int pagesize) {
		return hnQstpaperDao.List(dp,pageint,pagesize);
	}
	
	public List<Hn09Qstpaper> ListStudent(String no) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("no", no));
		dp.setParams(params);
		return hnQstpaperDao.ListStudent(dp);
	}
	public int Listsize() {
		return hnQstpaperDao.Listsize(dp);
	}

	public boolean save(Hn09Qstpaper hnQstpaper) {
		return hnQstpaperDao.Save(dp, hnQstpaper);
	}

	public boolean SaveSet(Set<Hn09QstpaperDtl> hnQstpapers) {
		return hnQstpaperDtlDao.Save(dp, hnQstpapers);
	}
	/**
	 * @param m 考试安排ID
	 * @param date 考试日期
	 * @param no 学号
	 * @return 返回试卷
	 */
	public Hn09Qstpaper SinglePaper(int m ,String date,String no,String name) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("id", m));
		params.add(new DataParameter("date", date));
		params.add(new DataParameter("no", no));
		params.add(new DataParameter("name", name));
		dp.setParams(params);
		return hnQstpaperDao.SingleQstpaper(dp);
	}
	
	/**
	 * @param plainid 考试安排ID
	 * @param no学号
	 * @param begin考试开始时间
	 * @return 返回试卷
	 */
	public Hn09Qstpaper SingleQstpaper(int plainid,String no ,String begin,String name) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("plainid", plainid));
		params.add(new DataParameter("no", no));
		params.add(new DataParameter("begin", begin));
		params.add(new DataParameter("name", name));
		dp.setParams(params);
		return hnQstpaperDao.List(dp);
	}
}
