package com.oracle.vo;

public class District {
	private String id;
	private String name;
	private String parentId;
	private char root;
	private int zone;
	
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
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public char getRoot() {
		return root;
	}
	public void setRoot(char root) {
		this.root = root;
	}
	public int getZone() {
		return zone;
	}
	public void setZone(int zone) {
		this.zone = zone;
	}
	@Override
	public String toString() {
		return "District [id=" + id + ", name=" + name + ", parentId=" + parentId + ", root=" + root + ", zone=" + zone
				+ "]";
	}

}
