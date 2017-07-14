package com.exam;

import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table
public class emp_project {

	private String empid;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String proj_name;
	private Double proj_budget;
	private Integer no_of_emp;
	
	public emp_project() {
		super();
	}
	
	public emp_project(String empid,String proj_name,Double proj_budget,Integer no_of_emp)
	{
		super();
		this.empid=empid;
		this.proj_name=proj_name;
		this.no_of_emp=no_of_emp;
		this.proj_budget=proj_budget;
	}
	
	public void setNo_of_emp(Integer no_of_emp) {
		this.no_of_emp = no_of_emp;
	}
	
	public void setProj_budget(Double proj_budget) {
		this.proj_budget = proj_budget;
	}
		
	public Integer getNo_of_emp() {
		return no_of_emp;
	}
	
	public Double getProj_budget() {
		return proj_budget;
	}
	
    public void setEmpid(String empid) {
	this.empid = empid;
}

public String getEmpid() {
	return empid;
}
	
	
	public String getProj_name() {
		return proj_name;
	}
	
	public void setProj_name(String proj_name) {
		this.proj_name = proj_name;
	}
}
