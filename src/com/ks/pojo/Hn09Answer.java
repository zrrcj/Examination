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
 * Hn09Answer entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "hn09_answer", catalog = "ks09_db")
public class Hn09Answer implements java.io.Serializable {

	// Fields

	private Integer hn09AskId;
	private Hn09Question hn09Question;
	private String hn09AskFlag;
	private String hn09AskContent;

	// Constructors

	/** default constructor */
	public Hn09Answer() {
	}

	/** full constructor */
	public Hn09Answer(Hn09Question hn09Question, String hn09AskFlag,
			String hn09AskContent) {
		this.hn09Question = hn09Question;
		this.hn09AskFlag = hn09AskFlag;
		this.hn09AskContent = hn09AskContent;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "hn09_ask_id", unique = true, nullable = false)
	public Integer getHn09AskId() {
		return this.hn09AskId;
	}

	public void setHn09AskId(Integer hn09AskId) {
		this.hn09AskId = hn09AskId;
	}

	@ManyToOne(fetch = FetchType.LAZY ,cascade=CascadeType.ALL)
	@JoinColumn(name = "hn09_ask_qstid")
	public Hn09Question getHn09Question() {
		return this.hn09Question;
	}

	public void setHn09Question(Hn09Question hn09Question) {
		this.hn09Question = hn09Question;
	}

	@Column(name = "hn09_ask_flag", length = 1)
	public String getHn09AskFlag() {
		return this.hn09AskFlag;
	}

	public void setHn09AskFlag(String hn09AskFlag) {
		this.hn09AskFlag = hn09AskFlag;
	}

	@Column(name = "hn09_ask_content", length = 1000)
	public String getHn09AskContent() {
		return this.hn09AskContent;
	}

	public void setHn09AskContent(String hn09AskContent) {
		this.hn09AskContent = hn09AskContent;
	}

}