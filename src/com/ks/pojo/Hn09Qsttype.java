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
 * Hn09Qsttype entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "hn09_qsttype", catalog = "ks09_db")
public class Hn09Qsttype implements java.io.Serializable {

	// Fields

	private Integer hn09QsttpId;
	private Hn09Subject hn09Subject;
	private String hn09QsttpName;
	private String hn09QsttpFlag;

	// Constructors

	/** default constructor */
	public Hn09Qsttype() {
	}

	/** full constructor */
	public Hn09Qsttype(Hn09Subject hn09Subject, String hn09QsttpName,
			String hn09QsttpFlag) {
		this.hn09Subject = hn09Subject;
		this.hn09QsttpName = hn09QsttpName;
		this.hn09QsttpFlag = hn09QsttpFlag;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "hn09_qsttp_id", unique = true, nullable = false)
	public Integer getHn09QsttpId() {
		return this.hn09QsttpId;
	}

	public void setHn09QsttpId(Integer hn09QsttpId) {
		this.hn09QsttpId = hn09QsttpId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "hn09_qsttp_sbjid")
	public Hn09Subject getHn09Subject() {
		return this.hn09Subject;
	}

	public void setHn09Subject(Hn09Subject hn09Subject) {
		this.hn09Subject = hn09Subject;
	}

	@Column(name = "hn09_qsttp_name", length = 50)
	public String getHn09QsttpName() {
		return this.hn09QsttpName;
	}

	public void setHn09QsttpName(String hn09QsttpName) {
		this.hn09QsttpName = hn09QsttpName;
	}

	@Column(name = "hn09_qsttp_flag", length = 1)
	public String getHn09QsttpFlag() {
		return this.hn09QsttpFlag;
	}

	public void setHn09QsttpFlag(String hn09QsttpFlag) {
		this.hn09QsttpFlag = hn09QsttpFlag;
	}

}