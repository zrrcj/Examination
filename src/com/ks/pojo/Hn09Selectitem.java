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
 * Hn09Selectitem entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "hn09_selectitem", catalog = "ks09_db")
public class Hn09Selectitem implements java.io.Serializable {

	// Fields

	private Integer hn09SiId;
	private Hn09Question hn09Question;
	private String hn09SiName;
	private String hn09SiContent;

	// Constructors

	/** default constructor */
	public Hn09Selectitem() {
	}

	/** full constructor */
	public Hn09Selectitem(Hn09Question hn09Question, String hn09SiName,
			String hn09SiContent) {
		this.hn09Question = hn09Question;
		this.hn09SiName = hn09SiName;
		this.hn09SiContent = hn09SiContent;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "hn09_si_id", unique = true, nullable = false)
	public Integer getHn09SiId() {
		return this.hn09SiId;
	}

	public void setHn09SiId(Integer hn09SiId) {
		this.hn09SiId = hn09SiId;
	}

	@ManyToOne(fetch = FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name = "hn09_si_qstid")
	public Hn09Question getHn09Question() {
		return this.hn09Question;
	}

	public void setHn09Question(Hn09Question hn09Question) {
		this.hn09Question = hn09Question;
	}

	@Column(name = "hn09_si_name", length = 1)
	public String getHn09SiName() {
		return this.hn09SiName;
	}

	public void setHn09SiName(String hn09SiName) {
		this.hn09SiName = hn09SiName;
	}

	@Column(name = "hn09_si_content", length = 500)
	public String getHn09SiContent() {
		return this.hn09SiContent;
	}

	public void setHn09SiContent(String hn09SiContent) {
		this.hn09SiContent = hn09SiContent;
	}

}