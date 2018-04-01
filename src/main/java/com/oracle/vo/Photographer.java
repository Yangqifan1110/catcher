package com.oracle.vo;

import java.sql.Timestamp;
import java.util.List;

public class Photographer {
	private int pho_id;
	private District pho_district;
	private String pho_username;
	private String pho_password;
	private String pho_name;
	private String pho_tel;
	private String pho_studio;
	private Timestamp pho_createTime;
	private int pho_sal;
	private int pho_heat;
	private int pho_level;
	private int pho_vipLevel;
	private List<Style> pho_style;
	private List<Goods> pho_goods;
//	private List<Customer> pho_cusFriend;
//	private List<Photographer> pho_phoFriend;
	
	public int getPho_id() {
		return pho_id;
	}
	public void setPho_id(int pho_id) {
		this.pho_id = pho_id;
	}
	public District getPho_district() {
		return pho_district;
	}
	public void setPho_district(District pho_district) {
		this.pho_district = pho_district;
	}
	public String getPho_username() {
		return pho_username;
	}
	public void setPho_username(String pho_username) {
		this.pho_username = pho_username;
	}
	public String getPho_password() {
		return pho_password;
	}
	public void setPho_password(String pho_password) {
		this.pho_password = pho_password;
	}
	public String getPho_name() {
		return pho_name;
	}
	public void setPho_name(String pho_name) {
		this.pho_name = pho_name;
	}
	public String getPho_tel() {
		return pho_tel;
	}
	public void setPho_tel(String pho_tel) {
		this.pho_tel = pho_tel;
	}
	public String getPho_studio() {
		return pho_studio;
	}
	public void setPho_studio(String pho_studio) {
		this.pho_studio = pho_studio;
	}
	public Timestamp getPho_createTime() {
		return pho_createTime;
	}
	public void setPho_createTime(Timestamp pho_createTime) {
		this.pho_createTime = pho_createTime;
	}
	public int getPho_sal() {
		return pho_sal;
	}
	public void setPho_sal(int pho_sal) {
		this.pho_sal = pho_sal;
	}
	public int getPho_heat() {
		return pho_heat;
	}
	public void setPho_heat(int pho_heat) {
		this.pho_heat = pho_heat;
	}
	public int getPho_level() {
		return pho_level;
	}
	public void setPho_level(int pho_level) {
		this.pho_level = pho_level;
	}
	public int getPho_vipLevel() {
		return pho_vipLevel;
	}
	public void setPho_vipLevel(int pho_vipLevel) {
		this.pho_vipLevel = pho_vipLevel;
	}
	public List<Style> getPho_style() {
		return pho_style;
	}
	public void setPho_style(List<Style> pho_style) {
		this.pho_style = pho_style;
	}
	public List<Goods> getPho_goods() {
		return pho_goods;
	}
	public void setPho_goods(List<Goods> pho_goods) {
		this.pho_goods = pho_goods;
	}
	
	@Override
	public String toString() {
		return "Photographer [pho_id=" + pho_id + ", pho_district=" + pho_district + ", pho_username=" + pho_username
				+ ", pho_password=" + pho_password + ", pho_name=" + pho_name + ", pho_tel=" + pho_tel + ", pho_studio="
				+ pho_studio + ", pho_createTime=" + pho_createTime + ", pho_sal=" + pho_sal + ", pho_heat=" + pho_heat
				+ ", pho_level=" + pho_level + ", pho_vipLevel=" + pho_vipLevel + ", pho_style=" + pho_style
				+ ", pho_goods=" + pho_goods + "]";
	}	
}
