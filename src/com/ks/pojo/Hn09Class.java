package com.ks.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Hn09Class entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "hn09_class", catalog = "ks09_db")
public class Hn09Class implements java.io.Serializable {

	// Fields

	private Integer hn09ClsId;
	private String hn09ClsFlag;
	private String hn09ClsName;

	// Constructors

	/** default constructor */
	public Hn09Class() {
	}

	/** full constructor */
	public Hn09Class(String hn09ClsFlag, String hn09ClsName) {
		this.hn09ClsFlag = hn09ClsFlag;
		this.hn09ClsName = hn09ClsName;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "hn09_cls_id", unique = true, nullable = false)
	public Integer getHn09ClsId() {
		return this.hn09ClsId;
	}

	public void setHn09ClsId(Integer hn09ClsId) {
		this.hn09ClsId = hn09ClsId;
	}

	@Column(name = "hn09_cls_flag", length = 20)
	public String getHn09ClsFlag() {
		return this.hn09ClsFlag;
	}

	public void setHn09ClsFlag(String hn09ClsFlag) {
		this.hn09ClsFlag = hn09ClsFlag;
	}

	@Column(name = "hn09_cls_name", length = 50)
	public String getHn09ClsName() {
		return this.hn09ClsName;
	}

	public void setHn09ClsName(String hn09ClsName) {
		this.hn09ClsName = hn09ClsName;
	}

}