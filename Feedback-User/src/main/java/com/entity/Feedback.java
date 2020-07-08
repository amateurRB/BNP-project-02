package com.entity;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity @Table(name="feedback")
public class Feedback {
	@Id @GeneratedValue
	private int cId;
	
	@Override
	public String toString() {
		return "Feedback [cId=" + cId + ", cname=" + cname + ", cEmail=" + cEmail + ", cAdd=" + cAdd + ", country="
				+ country + "]";
	}
	private String cname;

	private String cEmail;
	private String cAdd;
	private String country;
	private String carttype;
	private String calender;
	private String quality;
	private String size;
	private String delivery;
	private String subject;






	
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Feedback( String cname, String cEmail, String cAdd, String country, String carttype, String calender,String quality, String size, String delivery,String subject) {
		super();
		this.cId = cId;
		this.cname = cname;
		this.cEmail = cEmail;
		this.cAdd = cAdd;
		this.country = country;
		this.carttype = carttype;
		this.calender = calender;
		this.quality = quality;
		this.size = size;
		this.delivery = delivery;
		this.subject=subject;
	
	
}
}