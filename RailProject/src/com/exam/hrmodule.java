package com.exam;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table
@NamedQuery(name="hr.find",query="select h from hrmodule h where h.uname=:hrName and h.pwd=:hrPassword")
public class hrmodule {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String uname;
	private String pwd;
	
	public hrmodule(String uname,String pwd)
	{
		super();
		this.uname=uname;
		this.pwd=pwd;
	}
	public hrmodule()
	{
		super();
	}
	public String getUname() {
		return uname;
	}
	
	public void setUname(String uname) {
		this.uname = uname;
	}
	
	public String getPwd() {
		return pwd;
	}
	
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	
}
