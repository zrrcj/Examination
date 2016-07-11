package com.ks.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Hn09Student entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "hn09_student", catalog = "ks09_db")
public class Hn09Student implements java.io.Serializable {

	// Fields

	private Integer hn09StuId;
	private String hn09StuNo;
	private String hn09StuPwd;
	private String hn09StuName;
	private String hn09StuSex;
	private String hn09StuClsflag;

	// Constructors

	/** default constructor */
	public Hn09Student() {
	}

	/** full constructor */
	public Hn09Student(String hn09StuNo, String hn09StuPwd, String hn09StuName,
			String hn09StuSex, String hn09StuClsflag) {
		this.hn09StuNo = hn09StuNo;
		this.hn09StuPwd = hn09StuPwd;
		this.hn09StuName = hn09StuName;
		this.hn09StuSex = hn09StuSex;
		this.hn09StuClsflag = hn09StuClsflag;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "hn09_stu_id", unique = true, nullable = false)
	public Integer getHn09StuId() {
		return this.hn09StuId;
	}

	public void setHn09StuId(Integer hn09StuId) {
		this.hn09StuId = hn09StuId;
	}

	@Column(name = "hn09_stu_no", length = 20)
	public String getHn09StuNo() {
		return this.hn09StuNo;
	}

	public void setHn09StuNo(String hn09StuNo) {
		this.hn09StuNo = hn09StuNo;
	}

	@Column(name = "hn09_stu_pwd", length = 200)
	public String getHn09StuPwd() {
		return this.hn09StuPwd;
	}

	public void setHn09StuPwd(String hn09StuPwd) {
		this.hn09StuPwd = hn09StuPwd;
	}

	@Column(name = "hn09_stu_name", length = 50)
	public String getHn09StuName() {
		return this.hn09StuName;
	}

	public void setHn09StuName(String hn09StuName) {
		this.hn09StuName = hn09StuName;
	}

	@Column(name = "hn09_stu_sex", length = 2)
	public String getHn09StuSex() {
		return this.hn09StuSex;
	}

	public void setHn09StuSex(String hn09StuSex) {
		this.hn09StuSex = hn09StuSex;
	}

	@Column(name = "hn09_stu_clsflag", length = 20)
	public String getHn09StuClsflag() {
		return this.hn09StuClsflag;
	}

	public void setHn09StuClsflag(String hn09StuClsflag) {
		this.hn09StuClsflag = hn09StuClsflag;
	}

}