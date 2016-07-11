package com.ks.pojo;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Hn09Qstpaper entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "hn09_qstpaper", catalog = "ks09_db")
public class Hn09Qstpaper implements java.io.Serializable {

	// Fields

	private Integer hn09QprId;
	private Integer hn09QprPlinid;
	private String hn09QprName;
	private String hn09QprBegin;
	private String hn09QprEnd;
	private String hn09QprClsname;
	private String hn09QprNo;
	private String hn09QprStuname;
	private Double hn09QprScore;
	private String hn09QprDate;
	private String hn09QprIsno;
	private Set<Hn09QstpaperDtl> hn09QstpaperDtls = new HashSet<Hn09QstpaperDtl>(
			0);

	// Constructors

	/** default constructor */
	public Hn09Qstpaper() {
	}

	/** full constructor */
	public Hn09Qstpaper(String hn09QprName, String hn09QprBegin,
			String hn09QprEnd, String hn09QprClsname, String hn09QprNo,
			String hn09QprStuname, Double hn09QprScore, String hn09QprDate,
			String hn09QprIsno, Set<Hn09QstpaperDtl> hn09QstpaperDtls) {
		this.hn09QprName = hn09QprName;
		this.hn09QprBegin = hn09QprBegin;
		this.hn09QprEnd = hn09QprEnd;
		this.hn09QprClsname = hn09QprClsname;
		this.hn09QprNo = hn09QprNo;
		this.hn09QprStuname = hn09QprStuname;
		this.hn09QprScore = hn09QprScore;
		this.hn09QprDate = hn09QprDate;
		this.hn09QprIsno = hn09QprIsno;
		this.hn09QstpaperDtls = hn09QstpaperDtls;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "hn09_qpr_id", unique = true, nullable = false)
	public Integer getHn09QprId() {
		return this.hn09QprId;
	}

	public void setHn09QprId(Integer hn09QprId) {
		this.hn09QprId = hn09QprId;
	}

	@Column(name = "hn09_qpr_name", length = 20)
	public String getHn09QprName() {
		return this.hn09QprName;
	}

	public void setHn09QprName(String hn09QprName) {
		this.hn09QprName = hn09QprName;
	}

	@Column(name = "hn09_qpr_begin", length = 5)
	public String getHn09QprBegin() {
		return this.hn09QprBegin;
	}

	public void setHn09QprBegin(String hn09QprBegin) {
		this.hn09QprBegin = hn09QprBegin;
	}

	@Column(name = "hn09_qpr_end", length = 5)
	public String getHn09QprEnd() {
		return this.hn09QprEnd;
	}

	public void setHn09QprEnd(String hn09QprEnd) {
		this.hn09QprEnd = hn09QprEnd;
	}

	@Column(name = "hn09_qpr_clsname", length = 20)
	public String getHn09QprClsname() {
		return this.hn09QprClsname;
	}

	public void setHn09QprClsname(String hn09QprClsname) {
		this.hn09QprClsname = hn09QprClsname;
	}

	@Column(name = "hn09_qpr_no", length = 50)
	public String getHn09QprNo() {
		return this.hn09QprNo;
	}

	public void setHn09QprNo(String hn09QprNo) {
		this.hn09QprNo = hn09QprNo;
	}

	@Column(name = "hn09_qpr_stuname", length = 50)
	public String getHn09QprStuname() {
		return this.hn09QprStuname;
	}

	public void setHn09QprStuname(String hn09QprStuname) {
		this.hn09QprStuname = hn09QprStuname;
	}

	@Column(name = "hn09_qpr_score", precision = 6)
	public Double getHn09QprScore() {
		return this.hn09QprScore;
	}

	public void setHn09QprScore(Double hn09QprScore) {
		this.hn09QprScore = hn09QprScore;
	}

	@Column(name = "hn09_qpr_date", length = 10)
	public String getHn09QprDate() {
		return this.hn09QprDate;
	}

	public void setHn09QprDate(String hn09QprDate) {
		this.hn09QprDate = hn09QprDate;
	}

	@Column(name = "hn09_qpr_isno", length = 2)
	public String getHn09QprIsno() {
		return this.hn09QprIsno;
	}

	public void setHn09QprIsno(String hn09QprIsno) {
		this.hn09QprIsno = hn09QprIsno;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "hn09Qstpaper")
	@OrderBy("hn09QprdtlFlag asc,hn09QprdtlNo asc ")
	public Set<Hn09QstpaperDtl> getHn09QstpaperDtls() {
		return this.hn09QstpaperDtls;
	}

	public void setHn09QstpaperDtls(Set<Hn09QstpaperDtl> hn09QstpaperDtls) {
		this.hn09QstpaperDtls = hn09QstpaperDtls;
	}
	@Column(name = "hn09_qpr_plinid")
	public Integer getHn09QprPlinid() {
		return hn09QprPlinid;
	}
	
	public void setHn09QprPlinid(Integer hn09QprPlinid) {
		this.hn09QprPlinid = hn09QprPlinid;
	}

}