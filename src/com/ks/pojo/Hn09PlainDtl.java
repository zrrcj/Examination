package com.ks.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Hn09PlainDtl entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "hn09_plain_dtl", catalog = "ks09_db")
public class Hn09PlainDtl implements java.io.Serializable {

	// Fields

	private Integer hn09PlndtlId;
	private Hn09Plain hn09Plain;
	private String hn09PlndtlQsttype;
	private String hn09PlndtlFlag;
	private Integer hn09PlndtlCount;
	private Double hn09PlndtlScore;
	private Double hn09PlndtlPer;

	// Constructors

	/** default constructor */
	public Hn09PlainDtl() {
	}

	/** full constructor */
	public Hn09PlainDtl(Hn09Plain hn09Plain, String hn09PlndtlQsttype,
			String hn09PlndtlFlag, Integer hn09PlndtlCount,
			Double hn09PlndtlScore, Double hn09PlndtlPer) {
		this.hn09Plain = hn09Plain;
		this.hn09PlndtlQsttype = hn09PlndtlQsttype;
		this.hn09PlndtlFlag = hn09PlndtlFlag;
		this.hn09PlndtlCount = hn09PlndtlCount;
		this.hn09PlndtlScore = hn09PlndtlScore;
		this.hn09PlndtlPer = hn09PlndtlPer;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "hn09_plndtl_id", unique = true, nullable = false)
	public Integer getHn09PlndtlId() {
		return this.hn09PlndtlId;
	}

	public void setHn09PlndtlId(Integer hn09PlndtlId) {
		this.hn09PlndtlId = hn09PlndtlId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "hn09_plndtl_plnid")
	public Hn09Plain getHn09Plain() {
		return this.hn09Plain;
	}

	public void setHn09Plain(Hn09Plain hn09Plain) {
		this.hn09Plain = hn09Plain;
	}

	@Column(name = "hn09_plndtl_qsttype", length = 20)
	public String getHn09PlndtlQsttype() {
		return this.hn09PlndtlQsttype;
	}

	public void setHn09PlndtlQsttype(String hn09PlndtlQsttype) {
		this.hn09PlndtlQsttype = hn09PlndtlQsttype;
	}

	@Column(name = "hn09_plndtl_flag", length = 1)
	public String getHn09PlndtlFlag() {
		return this.hn09PlndtlFlag;
	}

	public void setHn09PlndtlFlag(String hn09PlndtlFlag) {
		this.hn09PlndtlFlag = hn09PlndtlFlag;
	}

	@Column(name = "hn09_plndtl_count")
	public Integer getHn09PlndtlCount() {
		return this.hn09PlndtlCount;
	}

	public void setHn09PlndtlCount(Integer hn09PlndtlCount) {
		this.hn09PlndtlCount = hn09PlndtlCount;
	}

	@Column(name = "hn09_plndtl_score", precision = 6)
	public Double getHn09PlndtlScore() {
		return this.hn09PlndtlScore;
	}

	public void setHn09PlndtlScore(Double hn09PlndtlScore) {
		this.hn09PlndtlScore = hn09PlndtlScore;
	}

	@Column(name = "hn09_plndtl_per", precision = 6)
	public Double getHn09PlndtlPer() {
		return this.hn09PlndtlPer;
	}

	public void setHn09PlndtlPer(Double hn09PlndtlPer) {
		this.hn09PlndtlPer = hn09PlndtlPer;
	}

}