package com.ks.pojo;

import javax.persistence.CascadeType;
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
 * Hn09QstpaperDtl entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "hn09_qstpaper_dtl", catalog = "ks09_db")
public class Hn09QstpaperDtl implements java.io.Serializable {

	// Fields

	private Integer hn09QprdtlId;
	private Hn09Qstpaper hn09Qstpaper;
	private Hn09Question hn09Question;
	private Integer hn09QprdtlNo;
	private String hn09QprdtlAsk;
	private String hn09QprdtlFlag;
	private String hn09QprdtlAnswer;
	private Double hn09QprdtlScore;
	private String hn09QprdtlStatus;
	private Double hn09QprdtlRealscore;

	// Constructors

	/** default constructor */
	public Hn09QstpaperDtl() {
	}

	/** full constructor */
	public Hn09QstpaperDtl(Hn09Qstpaper hn09Qstpaper,
			Hn09Question hn09Question, Integer hn09QprdtlNo,
			String hn09QprdtlAsk, String hn09QprdtlFlag,
			String hn09QprdtlAnswer, Double hn09QprdtlScore,
			String hn09QprdtlStatus, Double hn09QprdtlRealscore) {
		this.hn09Qstpaper = hn09Qstpaper;
		this.hn09Question = hn09Question;
		this.hn09QprdtlNo = hn09QprdtlNo;
		this.hn09QprdtlAsk = hn09QprdtlAsk;
		this.hn09QprdtlFlag = hn09QprdtlFlag;
		this.hn09QprdtlAnswer = hn09QprdtlAnswer;
		this.hn09QprdtlScore = hn09QprdtlScore;
		this.hn09QprdtlStatus = hn09QprdtlStatus;
		this.hn09QprdtlRealscore = hn09QprdtlRealscore;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "hn09_qprdtl_id", unique = true, nullable = false)
	public Integer getHn09QprdtlId() {
		return this.hn09QprdtlId;
	}

	public void setHn09QprdtlId(Integer hn09QprdtlId) {
		this.hn09QprdtlId = hn09QprdtlId;
	}

	@ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
	@JoinColumn(name = "hn09_qprdtl_qprid")
	public Hn09Qstpaper getHn09Qstpaper() {
		return this.hn09Qstpaper;
	}

	public void setHn09Qstpaper(Hn09Qstpaper hn09Qstpaper) {
		this.hn09Qstpaper = hn09Qstpaper;
	}

	@ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
	@JoinColumn(name = "hn09_qprdtl_qstid")
	public Hn09Question getHn09Question() {
		return this.hn09Question;
	}

	public void setHn09Question(Hn09Question hn09Question) {
		this.hn09Question = hn09Question;
	}

	@Column(name = "hn09_qprdtl_no")
	public Integer getHn09QprdtlNo() {
		return this.hn09QprdtlNo;
	}

	public void setHn09QprdtlNo(Integer hn09QprdtlNo) {
		this.hn09QprdtlNo = hn09QprdtlNo;
	}

	@Column(name = "hn09_qprdtl_ask", length = 8000)
	public String getHn09QprdtlAsk() {
		return this.hn09QprdtlAsk;
	}

	public void setHn09QprdtlAsk(String hn09QprdtlAsk) {
		this.hn09QprdtlAsk = hn09QprdtlAsk;
	}

	@Column(name = "hn09_qprdtl_flag", length = 1)
	public String getHn09QprdtlFlag() {
		return this.hn09QprdtlFlag;
	}

	public void setHn09QprdtlFlag(String hn09QprdtlFlag) {
		this.hn09QprdtlFlag = hn09QprdtlFlag;
	}

	@Column(name = "hn09_qprdtl_answer", length = 8000)
	public String getHn09QprdtlAnswer() {
		return this.hn09QprdtlAnswer;
	}

	public void setHn09QprdtlAnswer(String hn09QprdtlAnswer) {
		this.hn09QprdtlAnswer = hn09QprdtlAnswer;
	}

	@Column(name = "hn09_qprdtl_score", precision = 6)
	public Double getHn09QprdtlScore() {
		return this.hn09QprdtlScore;
	}

	public void setHn09QprdtlScore(Double hn09QprdtlScore) {
		this.hn09QprdtlScore = hn09QprdtlScore;
	}

	@Column(name = "hn09_qprdtl_status", length = 2)
	public String getHn09QprdtlStatus() {
		return this.hn09QprdtlStatus;
	}

	public void setHn09QprdtlStatus(String hn09QprdtlStatus) {
		this.hn09QprdtlStatus = hn09QprdtlStatus;
	}

	@Column(name = "hn09_qprdtl_realscore", precision = 6)
	public Double getHn09QprdtlRealscore() {
		return this.hn09QprdtlRealscore;
	}

	public void setHn09QprdtlRealscore(Double hn09QprdtlRealscore) {
		this.hn09QprdtlRealscore = hn09QprdtlRealscore;
	}

}