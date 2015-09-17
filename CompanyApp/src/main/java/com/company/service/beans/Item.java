package com.company.service.beans;

public class Item {

	private String itemId;
	private String ply;
	private String dimension;
	private String gsm;
	private String price;
	
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getPly() {
		return ply;
	}
	public void setPly(String ply) {
		this.ply = ply;
	}
	public String getDimension() {
		return dimension;
	}
	public void setDimension(String dimension) {
		this.dimension = dimension;
	}
	public String getGsm() {
		return gsm;
	}
	public void setGsm(String gsm) {
		this.gsm = gsm;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Item [ply=" + ply + ", dimension=" + dimension + ", gsm=" + gsm
				+ ", price=" + price + "]";
	}
}
