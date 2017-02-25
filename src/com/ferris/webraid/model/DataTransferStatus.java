package com.ferris.webraid.model;

public class DataTransferStatus {

	private String storagePoolName;
	private String uuid;
	private String transferSpeed;
	private String enableTransfer;
	private String isTransfer;
	public String getStoragePoolName() {
		return storagePoolName;
	}
	public void setStoragePoolName(String storagePoolName) {
		this.storagePoolName = storagePoolName;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getTransferSpeed() {
		return transferSpeed;
	}
	public void setTransferSpeed(String transferSpeed) {
		this.transferSpeed = transferSpeed;
	}
	public String getEnableTransfer() {
		return enableTransfer;
	}
	public void setEnableTransfer(String enableTransfer) {
		this.enableTransfer = enableTransfer;
	}
	public String getIsTransfer() {
		return isTransfer;
	}
	public void setIsTransfer(String isTransfer) {
		this.isTransfer = isTransfer;
	}
	
	
}
