package com.ks.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.ks.dao.DataParameter;
import com.ks.dao.DataProvider;
import com.ks.dao.HN09QstpaperDtlDao;
import com.ks.pojo.Hn09QstpaperDtl;

@Scope("prototype")
@Service
public class HN09QstpaperDtlSrvie {
	@Resource
	private DataProvider dp;
	@Resource
	private HN09QstpaperDtlDao hnQstpaperDtlDao;
	
	public List<Hn09QstpaperDtl> List(int pageint, int pagesize) {
		return hnQstpaperDtlDao.List(dp,pageint,pagesize);
	}
	public int Listsize() {
		return hnQstpaperDtlDao.Listsize(dp);
	}

	/**
	 * @param hnQstpaper 试卷详细表
	 * @return 
	 */
	public boolean save(Hn09QstpaperDtl hnQstpaperDtl) {
		return hnQstpaperDtlDao.Save(dp, hnQstpaperDtl);
	}

	public boolean SaveSet(Set<Hn09QstpaperDtl> hnQstpapers) {
		return hnQstpaperDtlDao.Save(dp, hnQstpapers);
	}
	/**
	 * @param m 试卷详细表ID
	 * @return 返回试卷详细
	 */
	public Hn09QstpaperDtl SinglePaper(int m) {
		List<DataParameter> params = new LinkedList<DataParameter>();
		params.add(new DataParameter("id", m));
		dp.setParams(params);
		return hnQstpaperDtlDao.SingleQstpaperDtl(dp);
	}
	
}
