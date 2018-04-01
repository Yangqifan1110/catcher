package com.oracle.vo;

public class Style {
	private int sty_id;
	private String sty_name;
	public int getSty_id() {
		return sty_id;
	}
	public void setSty_id(int sty_id) {
		this.sty_id = sty_id;
	}
	public String getSty_name() {
		return sty_name;
	}
	public void setSty_name(String sty_name) {
		this.sty_name = sty_name;
	}
	@Override
	public String toString() {
		return "Style [sty_id=" + sty_id + ", sty_name=" + sty_name + "]";
	}

}
