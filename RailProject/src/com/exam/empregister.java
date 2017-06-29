package com.exam;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table
@NamedQuery(name="emp.find",query="select e.email from empregister e where e.email=:empemail and e.password=:emppassword")
public class empregister {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String email;
	private String first_name;
	private String last_name;
	private String phone;
	private String address;
	private String city;
	private String state;
	private String comment;
	private String password;
	private String confirmPassword;
	private Integer empid;
	
	public empregister() {
		super();
	}
	
	public empregister(String email,String first_name,String last_name,String phone,String address,String city,String state,String comment,String password,String confirmPassword,Integer empid)
	{
		super();
		this.first_name = first_name;
		this.last_name=last_name;
		this.phone=phone;
		this.address=address;
		this.city=city;
		this.state=state;
		this.comment=comment;
		this.password=password;
		this.confirmPassword=confirmPassword;
		this.empid=empid;
		}
	
	public Integer getEmpid() {
		return empid;
	}

	public void setEmpid(Integer empid) {
		this.empid = empid;
	}
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getComment() {
		return comment;
	} 
	
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	public String getCity() {
		return city;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getConfirmPassword() {
		return confirmPassword;
	}
	
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getFirst_name() {
		return first_name;
	}
	
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	
	public String getLast_name() {
		return last_name;
	}
	
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getState() {
		return state;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}  
	
	public void setState(String state) {
		this.state = state;
	}
	
	
}
