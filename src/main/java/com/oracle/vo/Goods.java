package com.oracle.vo;

import java.util.List;

public class Goods {
	private int gos_id;
	private String gos_name;
	private List<Style> gos_style;
	private Photographer gos_photographer;
	public int getGos_id() {
		return gos_id;
	}
	public void setGos_id(int gos_id) {
		this.gos_id = gos_id;
	}
	
	public String getGos_name() {
		return gos_name;
	}
	public void setGos_name(String gos_name) {
		this.gos_name = gos_name;
	}
	public Photographer getGos_photographer() {
		return gos_photographer;
	}
	public void setGos_photographer(Photographer gos_photographer) {
		this.gos_photographer = gos_photographer;
		
		
	}
	public List<Style> getGos_style() {
		return gos_style;
	}
	public void setGos_style(List<Style> gos_style) {
		this.gos_style = gos_style;
	}
	@Override
	public String toString() {
		return "Goods [gos_id=" + gos_id + ", gos_name=" + gos_name + ", gos_style=" + gos_style + ", gos_photographer="
				+ gos_photographer + "]";
	}
	
}
