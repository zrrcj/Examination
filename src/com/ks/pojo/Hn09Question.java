package com.ks.pojo;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Hn09Question entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "hn09_question", catalog = "ks09_db")
public class Hn09Question implements java.io.Serializable {

	// Fields

	private Integer hn09QstId;
	private String hn09QstAsk;
	private Hn09Subject hn09Subject;
	//private Integer hn09QstSbjid;
	private String hn09QstFlag;
	private Integer hn09QstCount;
	private Set<Hn09Selectitem> hn09Selectitems = new HashSet<Hn09Selectitem>(0);
	private Set<Hn09Answer> hn09Answers = new HashSet<Hn09Answer>(0);
	private Set<Hn09QstpaperDtl> hn09QstpaperDtls = new HashSet<Hn09QstpaperDtl>(
			0);

	// Constructors

	/** default constructor */
	public Hn09Question() {
	}

	/** full constructor */
	public Hn09Question(String hn09QstAsk,
			String hn09QstFlag, Integer hn09QstCount,
			Set<Hn09Selectitem> hn09Selectitems, Set<Hn09Answer> hn09Answers,
			Set<Hn09QstpaperDtl> hn09QstpaperDtls, Hn09Subject hn09Subject) {
		this.hn09QstAsk = hn09QstAsk;
		//this.hn09QstSbjid = hn09QstSbjid;
		this.hn09QstFlag = hn09QstFlag;
		this.hn09QstCount = hn09QstCount;
		this.hn09Selectitems = hn09Selectitems;
		this.hn09Answers = hn09Answers;
		this.hn09QstpaperDtls = hn09QstpaperDtls;
		this.hn09Subject = hn09Subject;

	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "hn09_qst_id", unique = true, nullable = false)
	public Integer getHn09QstId() {
		return this.hn09QstId;
	}

	public void setHn09QstId(Integer hn09QstId) {
		this.hn09QstId = hn09QstId;
	}

	@Column(name = "hn09_qst_ask", length = 8000)
	public String getHn09QstAsk() {
		return this.hn09QstAsk;
	}

	public void setHn09QstAsk(String hn09QstAsk) {
		this.hn09QstAsk = hn09QstAsk;
	}

	@Column(name = "hn09_qst_flag", length = 1)
	public String getHn09QstFlag() {
		return this.hn09QstFlag;
	}

	public void setHn09QstFlag(String hn09QstFlag) {
		this.hn09QstFlag = hn09QstFlag;
	}

	@Column(name = "hn09_qst_count")
	public Integer getHn09QstCount() {
		return this.hn09QstCount;
	}

	public void setHn09QstCount(Integer hn09QstCount) {
		this.hn09QstCount = hn09QstCount;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "hn09Question")
	@OrderBy("hn09SiName asc")
	public Set<Hn09Selectitem> getHn09Selectitems() {
		return this.hn09Selectitems;
	}

	public void setHn09Selectitems(Set<Hn09Selectitem> hn09Selectitems) {
		this.hn09Selectitems = hn09Selectitems;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "hn09Question")
	public Set<Hn09Answer> getHn09Answers() {
		return this.hn09Answers;
	}

	public void setHn09Answers(Set<Hn09Answer> hn09Answers) {
		this.hn09Answers = hn09Answers;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "hn09Question")
	public Set<Hn09QstpaperDtl> getHn09QstpaperDtls() {
		return this.hn09QstpaperDtls;
	}

	public void setHn09QstpaperDtls(Set<Hn09QstpaperDtl> hn09QstpaperDtls) {
		this.hn09QstpaperDtls = hn09QstpaperDtls;
	}

	@ManyToOne(fetch = FetchType.LAZY )
	@JoinColumn(name = "hn09_qst_sbjid", nullable = false)
	public Hn09Subject getHn09Subject() {
		return hn09Subject;
	}

	public void setHn09Subject(Hn09Subject hn09Subject) {
		this.hn09Subject = hn09Subject;
	}

}