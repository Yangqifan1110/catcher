package com.oracle.vo;

import java.sql.Timestamp;

public class Comment {
	private int cot_id;
	private Customer cot_customer;
	private int cot_parentId;
	private char cot_level;
	private String cot_content;
	private Timestamp cot_createTime;
	public int getCot_id() {
		return cot_id;
	}
	public void setCot_id(int cot_id) {
		this.cot_id = cot_id;
	}
	public Customer getCot_customer() {
		return cot_customer;
	}
	public void setCot_customer(Customer cot_customer) {
		this.cot_customer = cot_customer;
	}
	public int getCot_parentId() {
		return cot_parentId;
	}
	public void setCot_parentId(int cot_parentId) {
		this.cot_parentId = cot_parentId;
	}
	public char getCot_level() {
		return cot_level;
	}
	public void setCot_level(char cot_level) {
		this.cot_level = cot_level;
	}
	public String getCot_content() {
		return cot_content;
	}
	public void setCot_content(String cot_content) {
		this.cot_content = cot_content;
	}
	public Timestamp getCot_createTime() {
		return cot_createTime;
	}
	public void setCot_createTime(Timestamp cot_createTime) {
		this.cot_createTime = cot_createTime;
	}

	
}
