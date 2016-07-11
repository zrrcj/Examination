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
 * Hn09Plain entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "hn09_plain", catalog = "ks09_db")
public class Hn09Plain implements java.io.Serializable {

	// Fields

	private Integer hn09PlnId;
	private String hn09PlnTerm;
	private Integer hn09PlnClsid;
	private String hn09PlnClass;
	private String hn09PlnSubject;
	private String hn09PlnRoom;
	private String hn09PlnDate;
	private String hn09PlnBegin;
	private String hn09PlnEnd;
	private Set<Hn09PlainDtl> hn09PlainDtls = new HashSet<Hn09PlainDtl>(0);

	// Constructors

	/** default constructor */
	public Hn09Plain() {
	}

	/** full constructor */
	public Hn09Plain(String hn09PlnTerm, Integer hn09PlnClsid,
			String hn09PlnClass, String hn09PlnSubject, String hn09PlnRoom,
			String hn09PlnDate, String hn09PlnBegin, String hn09PlnEnd,
			Set<Hn09PlainDtl> hn09PlainDtls) {
		this.hn09PlnTerm = hn09PlnTerm;
		this.hn09PlnClsid = hn09PlnClsid;
		this.hn09PlnClass = hn09PlnClass;
		this.hn09PlnSubject = hn09PlnSubject;
		this.hn09PlnRoom = hn09PlnRoom;
		this.hn09PlnDate = hn09PlnDate;
		this.hn09PlnBegin = hn09PlnBegin;
		this.hn09PlnEnd = hn09PlnEnd;
		this.hn09PlainDtls = hn09PlainDtls;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "hn09_pln_id", unique = true, nullable = false)
	public Integer getHn09PlnId() {
		return this.hn09PlnId;
	}

	public void setHn09PlnId(Integer hn09PlnId) {
		this.hn09PlnId = hn09PlnId;
	}

	@Column(name = "hn09_pln_term", length = 50)
	public String getHn09PlnTerm() {
		return this.hn09PlnTerm;
	}

	public void setHn09PlnTerm(String hn09PlnTerm) {
		this.hn09PlnTerm = hn09PlnTerm;
	}

	@Column(name = "hn09_pln_clsid")
	public Integer getHn09PlnClsid() {
		return this.hn09PlnClsid;
	}

	public void setHn09PlnClsid(Integer hn09PlnClsid) {
		this.hn09PlnClsid = hn09PlnClsid;
	}

	@Column(name = "hn09_pln_class", length = 50)
	public String getHn09PlnClass() {
		return this.hn09PlnClass;
	}

	public void setHn09PlnClass(String hn09PlnClass) {
		this.hn09PlnClass = hn09PlnClass;
	}

	@Column(name = "hn09_pln_subject", length = 50)
	public String getHn09PlnSubject() {
		return this.hn09PlnSubject;
	}

	public void setHn09PlnSubject(String hn09PlnSubject) {
		this.hn09PlnSubject = hn09PlnSubject;
	}

	@Column(name = "hn09_pln_room", length = 50)
	public String getHn09PlnRoom() {
		return this.hn09PlnRoom;
	}

	public void setHn09PlnRoom(String hn09PlnRoom) {
		this.hn09PlnRoom = hn09PlnRoom;
	}

	@Column(name = "hn09_pln_date", length = 10)
	public String getHn09PlnDate() {
		return this.hn09PlnDate;
	}

	public void setHn09PlnDate(String hn09PlnDate) {
		this.hn09PlnDate = hn09PlnDate;
	}

	@Column(name = "hn09_pln_begin", length = 5)
	public String getHn09PlnBegin() {
		return this.hn09PlnBegin;
	}

	public void setHn09PlnBegin(String hn09PlnBegin) {
		this.hn09PlnBegin = hn09PlnBegin;
	}

	@Column(name = "hn09_pln_end", length = 5)
	public String getHn09PlnEnd() {
		return this.hn09PlnEnd;
	}

	public void setHn09PlnEnd(String hn09PlnEnd) {
		this.hn09PlnEnd = hn09PlnEnd;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "hn09Plain")
	public Set<Hn09PlainDtl> getHn09PlainDtls() {
		return this.hn09PlainDtls;
	}

	public void setHn09PlainDtls(Set<Hn09PlainDtl> hn09PlainDtls) {
		this.hn09PlainDtls = hn09PlainDtls;
	}

}