package com.oracle.vo;

import java.sql.Timestamp;
import java.util.List;

public class Order {
	private int id;
	private Timestamp time;
	private String address;
	private int price;
	private List<Style> style;
	private Timestamp createStamp;
	private int isClothes;
	private int status;
	private Customer customer;
	private Photographer photographer;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public List<Style> getStyle() {
		return style;
	}
	public void setStyle(List<Style> style) {
		this.style = style;
	}
	public Timestamp getCreateStamp() {
		return createStamp;
	}
	public void setCreateStamp(Timestamp createStamp) {
		this.createStamp = createStamp;
	}
	
	public int getIsClothes() {
		return isClothes;
	}
	public void setIsClothes(int isClothes) {
		this.isClothes = isClothes;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Photographer getPhotographer() {
		return photographer;
	}
	public void setPhotographer(Photographer photographer) {
		this.photographer = photographer;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", time=" + time + ", address=" + address + ", price=" + price + ", style=" + style
				+ ", createStamp=" + createStamp + ", isClothes=" + isClothes + ", status=" + status + ", customer="
				+ customer + ", photographer=" + photographer + "]";
	}
	
	
	
}
