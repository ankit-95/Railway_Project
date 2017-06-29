package com.exam;

import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Embeddable
@Table
public class emp_performance {
	
	private Integer empid;
	private String per_year;
	private String sales;
	
	public emp_performance()
	{
		super();
	}
	
	public emp_performance(Integer empid,String per_year,String sales) {
		
		this.empid = empid;
		this.per_year=per_year;
		this.sales = sales;
	}
	
public void setEmpid(Integer empid) {
	this.empid = empid;
}	
	public void setPer_year(String per_year) {
		this.per_year = per_year;
	}  
	
	public void setSales(String sales) {
		this.sales = sales;
	}
	
public Integer getEmpid() {
	return empid;
}	
	public String getPer_year() {
		return per_year;
	}
	
	public String getSales() {
		return sales;
	}
}
