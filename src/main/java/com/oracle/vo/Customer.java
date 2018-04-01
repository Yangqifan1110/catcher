package com.oracle.vo;

import java.sql.Timestamp;
import java.util.List;

public class Customer {
	private int cus_id;
	private District cus_district;
	private String cus_username;
	private String cus_password;
	private String cus_name;
	private String cus_tel;
	private List<Style> cus_style;
	private Timestamp cus_createTime;
	private int cus_heat;
	private int cus_level;
	private int cus_isModel;
	private int cus_vipLevel;
//	private List<Customer> cus_cusFriend;
//	private List<Photographer> cus_phoFriend;
	
	public int getCus_id() {
		return cus_id;
	}
	public void setCus_id(int cus_id) {
		this.cus_id = cus_id;
	}
	public District getCus_district() {
		return cus_district;
	}
	public void setCus_district(District cus_district) {
		this.cus_district = cus_district;
	}
	public String getCus_username() {
		return cus_username;
	}
	public void setCus_username(String cus_username) {
		this.cus_username = cus_username;
	}
	public String getCus_password() {
		return cus_password;
	}
	public void setCus_password(String cus_password) {
		this.cus_password = cus_password;
	}
	public String getCus_name() {
		return cus_name;
	}
	public void setCus_name(String cus_name) {
		this.cus_name = cus_name;
	}
	public String getCus_tel() {
		return cus_tel;
	}
	public void setCus_tel(String cus_tel) {
		this.cus_tel = cus_tel;
	}
	public List<Style> getCus_style() {
		return cus_style;
	}
	public void setCus_style(List<Style> cus_style) {
		this.cus_style = cus_style;
	}
	public Timestamp getCus_createTime() {
		return cus_createTime;
	}
	public void setCus_createTime(Timestamp cus_createTime) {
		this.cus_createTime = cus_createTime;
	}
	public int getCus_heat() {
		return cus_heat;
	}
	public void setCus_heat(int cus_heat) {
		this.cus_heat = cus_heat;
	}
	public int getCus_level() {
		return cus_level;
	}
	public void setCus_level(int cus_level) {
		this.cus_level = cus_level;
	}
	public int getCus_isModel() {
		return cus_isModel;
	}
	public void setCus_isModel(int cus_isModel) {
		this.cus_isModel = cus_isModel;
	}
	public int getCus_vipLevel() {
		return cus_vipLevel;
	}
	public void setCus_vipLevel(int cus_vipLevel) {
		this.cus_vipLevel = cus_vipLevel;
	}
	@Override
	public String toString() {
		return "Customer [cus_id=" + cus_id + ", cus_district=" + cus_district + ", cus_username=" + cus_username
				+ ", cus_password=" + cus_password + ", cus_name=" + cus_name + ", cus_tel=" + cus_tel + ", cus_style="
				+ cus_style + ", cus_createTime=" + cus_createTime + ", cus_heat=" + cus_heat + ", cus_level="
				+ cus_level + ", cus_isModel=" + cus_isModel + ", cus_vipLevel=" + cus_vipLevel + "]";
	}
	
}
