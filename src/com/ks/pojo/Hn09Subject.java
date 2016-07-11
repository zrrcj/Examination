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
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Hn09Subject entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "hn09_subject", catalog = "ks09_db")
public class Hn09Subject implements java.io.Serializable {

	// Fields

	private Integer hn09SbjId;
	private String hn09SbjName;
	private Set<Hn09Question>hn09Questions =new HashSet<Hn09Question>(0);
	private Set<Hn09Qsttype> hn09Qsttypes = new HashSet<Hn09Qsttype>(0);

	// Constructors

	/** default constructor */
	public Hn09Subject() {
	}

	/** full constructor */
	public Hn09Subject(String hn09SbjName, Set<Hn09Qsttype> hn09Qsttypes,Set<Hn09Question>hn09Questions) {
		this.hn09SbjName = hn09SbjName;
		this.hn09Qsttypes = hn09Qsttypes;
		this.hn09Questions=hn09Questions;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "hn09_sbj_id", unique = true, nullable = false)
	public Integer getHn09SbjId() {
		return this.hn09SbjId;
	}

	public void setHn09SbjId(Integer hn09SbjId) {
		this.hn09SbjId = hn09SbjId;
	}

	@Column(name = "hn09_sbj_name", length = 50)
	public String getHn09SbjName() {
		return this.hn09SbjName;
	}

	public void setHn09SbjName(String hn09SbjName) {
		this.hn09SbjName = hn09SbjName;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "hn09Subject")
	public Set<Hn09Qsttype> getHn09Qsttypes() {
		return this.hn09Qsttypes;
	}

	public void setHn09Qsttypes(Set<Hn09Qsttype> hn09Qsttypes) {
		this.hn09Qsttypes = hn09Qsttypes;
	}
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "hn09Subject")
	public Set<Hn09Question> getHn09Questions() {
		return hn09Questions;
	}

	public void setHn09Questions(Set<Hn09Question> hn09Questions) {
		this.hn09Questions = hn09Questions;
	}

}