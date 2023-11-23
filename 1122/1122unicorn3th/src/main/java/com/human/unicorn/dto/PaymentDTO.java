package com.human.unicorn.dto;

import java.sql.Date;

public class PaymentDTO {

	private int userno;
	private String id;
	private String name;
	private String address;
	private String addressdetails;
	private String postcode;
	private String tel;
	private String email;
	private int userpoint;
	private int grade;
	private Date signupdate;
	private int cartcount;
	
	private String productno;
	private String productname;
	private String productex;
	private String mainimg1;
	private String mainimg2;
	private String mainimg3;
	private String fabric;
	private String company;
	private int popularity;
	private int productprice;
	
	
	private int delveryFee; 
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddressdetails() {
		return addressdetails;
	}
	public void setAddressdetails(String addressdetails) {
		this.addressdetails = addressdetails;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getUserpoint() {
		return userpoint;
	}
	public void setUserpoint(int userpoint) {
		this.userpoint = userpoint;
	}
	
	
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public Date getSignupdate() {
		return signupdate;
	}
	public void setSignupdate(Date sigupdate) {
		this.signupdate = sigupdate;
	}
	public String getProductno() {
		return productno;
	}
	public void setProductno(String productno) {
		this.productno = productno;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getProductex() {
		return productex;
	}
	public void setProductex(String productex) {
		this.productex = productex;
	}
	public String getMainimg1() {
		return mainimg1;
	}
	public void setMainimg1(String mainimg1) {
		this.mainimg1 = mainimg1;
	}
	public String getMainimg2() {
		return mainimg2;
	}
	public void setMainimg2(String mainimg2) {
		this.mainimg2 = mainimg2;
	}
	public String getMainimg3() {
		return mainimg3;
	}
	public void setMainimg3(String mainimg3) {
		this.mainimg3 = mainimg3;
	}
	public String getFabric() {
		return fabric;
	}
	public void setFabric(String fabric) {
		this.fabric = fabric;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getPopularity() {
		return popularity;
	}
	public void setPopularity(int popularity) {
		this.popularity = popularity;
	}
	public int getProductprice() {
		return productprice;
	}
	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}
	
	@Override
	public String toString() {
		return "PaymentDTO [userno=" + userno + ", id=" + id + ", name=" + name + ", address=" + address
				+ ", addressdetails=" + addressdetails + ", postcode=" + postcode + ", tel=" + tel + ", email=" + email
				+ ", userpoint=" + userpoint + ", grade=" + grade + ", signupdate=" + signupdate + ", cartcount="
				+ cartcount + ", productno=" + productno + ", productname=" + productname + ", productex=" + productex
				+ ", mainimg1=" + mainimg1 + ", mainimg2=" + mainimg2 + ", mainimg3=" + mainimg3 + ", fabric=" + fabric
				+ ", company=" + company + ", popularity=" + popularity + ", productprice=" + productprice
				+ ", delveryFee=" + delveryFee + "]";
	}
	public int getCartcount() {
		return cartcount;
	}
	public void setCartcount(int cartcount) {
		this.cartcount = cartcount;
	}
	public int getDelveryFee() {
		return delveryFee;
	}
	public void setDelveryFee(int delveryFee) {
		this.delveryFee = delveryFee;
	}
	
	
}
