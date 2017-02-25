package com.ferris.webraid.model;

public class StoragePool {
	
	//table title
	private String storagePoolName;
	private String seqNo;
	private String status;
	private String blockSize;
	private String ssdNum;
	private String runingSSDNum;
	private String poolCapacity;
	private String poolFreeCapacity;
	private String virtualDiskNum;
	private String rwPermission;
	
	// additional details
	private String createdTime;
	private String masterSeqNo;
	private String poolCapacityByte;
	private String poolReserveCapacity;
	private String issueObjectNum;
	private String degradedObjectNum;
	private String allocAlgorithmType;
	private String handlingThreadNum;
	
	public String getStoragePoolName() {
		return storagePoolName;
	}
	public void setStoragePoolName(String storagePoolName) {
		this.storagePoolName = storagePoolName;
	}
	public String getSeqNo() {
		return seqNo;
	}
	public void setSeqNo(String seqNo) {
		this.seqNo = seqNo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getBlockSize() {
		return blockSize;
	}
	public void setBlockSize(String blockSize) {
		this.blockSize = blockSize;
	}
	public String getSsdNum() {
		return ssdNum;
	}
	public void setSsdNum(String ssdNum) {
		this.ssdNum = ssdNum;
	}
	public String getRuningSSDNum() {
		return runingSSDNum;
	}
	public void setRuningSSDNum(String runingSSDNum) {
		this.runingSSDNum = runingSSDNum;
	}
	public String getPoolCapacity() {
		return poolCapacity;
	}
	public void setPoolCapacity(String poolCapacity) {
		this.poolCapacity = poolCapacity;
	}
	public String getPoolFreeCapacity() {
		return poolFreeCapacity;
	}
	public void setPoolFreeCapacity(String poolFreeCapacity) {
		this.poolFreeCapacity = poolFreeCapacity;
	}
	public String getVirtualDiskNum() {
		return virtualDiskNum;
	}
	public void setVirtualDiskNum(String virtualDiskNum) {
		this.virtualDiskNum = virtualDiskNum;
	}
	public String getRwPermission() {
		return rwPermission;
	}
	public void setRwPermission(String rwPermission) {
		this.rwPermission = rwPermission;
	}
	public String getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}
	public String getMasterSeqNo() {
		return masterSeqNo;
	}
	public void setMasterSeqNo(String masterSeqNo) {
		this.masterSeqNo = masterSeqNo;
	}
	public String getPoolCapacityByte() {
		return poolCapacityByte;
	}
	public void setPoolCapacityByte(String poolCapacityByte) {
		this.poolCapacityByte = poolCapacityByte;
	}
	public String getPoolReserveCapacity() {
		return poolReserveCapacity;
	}
	public void setPoolReserveCapacity(String poolReserveCapacity) {
		this.poolReserveCapacity = poolReserveCapacity;
	}
	public String getIssueObjectNum() {
		return issueObjectNum;
	}
	public void setIssueObjectNum(String issueObjectNum) {
		this.issueObjectNum = issueObjectNum;
	}
	public String getDegradedObjectNum() {
		return degradedObjectNum;
	}
	public void setDegradedObjectNum(String degradedObjectNum) {
		this.degradedObjectNum = degradedObjectNum;
	}
	public String getAllocAlgorithmType() {
		return allocAlgorithmType;
	}
	public void setAllocAlgorithmType(String allocAlgorithmType) {
		this.allocAlgorithmType = allocAlgorithmType;
	}
	public String getHandlingThreadNum() {
		return handlingThreadNum;
	}
	public void setHandlingThreadNum(String handlingThreadNum) {
		this.handlingThreadNum = handlingThreadNum;
	}

}
