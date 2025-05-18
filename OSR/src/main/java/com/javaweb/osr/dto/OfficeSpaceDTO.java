package com.javaweb.osr.dto;

public class OfficeSpaceDTO {

	private String title;
	private String buildingName;
	private String address;
	private String type;
	private String[] tagName;
	private Double size;
	private Integer capacity;
	private String[] imageName;
	private String[] amenityName;
	private String[] quantity;
	private String[] rentTypeName;
	private String[] price;
	private String[] deposit;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBuildingName() {
		return buildingName;
	}

	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String[] getTagName() {
		return tagName;
	}

	public void setTagName(String[] tagName) {
		this.tagName = tagName;
	}

	public Double getSize() {
		return size;
	}

	public void setSize(Double size) {
		this.size = size;
	}

	public Integer getCapacity() {
		return capacity;
	}

	public void setCapacity(Integer capacity) {
		this.capacity = capacity;
	}

	public String[] getImageName() {
		return imageName;
	}

	public void setImageName(String[] imageName) {
		this.imageName = imageName;
	}

	public String[] getAmenityName() {
		return amenityName;
	}

	public void setAmenityName(String[] amenityName) {
		this.amenityName = amenityName;
	}

	public String[] getQuantity() {
		return quantity;
	}

	public void setQuantity(String[] quantity) {
		this.quantity = quantity;
	}

	public String[] getRentTypeName() {
		return rentTypeName;
	}

	public void setRentTypeName(String[] rentTypeName) {
		this.rentTypeName = rentTypeName;
	}

	public String[] getPrice() {
		return price;
	}

	public void setPrice(String[] price) {
		this.price = price;
	}

	public String[] getDeposit() {
		return deposit;
	}

	public void setDeposit(String[] deposit) {
		this.deposit = deposit;
	}
}