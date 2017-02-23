package com.ferris.webraid.model;

public class VirtualHardDisk {
	
	//table title;
	private String vhdName;
	private String seqNo;
	private String status;
	private String capacity;
	private String raidLevel;
	private String stripSize;
	private String simpleCfg;
	private String rwPermisstion;
	
	//addtional details
	private String storagePoolName;
	private String poolSeqNo;
	private String deviceNo;
	private String capacityByte;
	private String maxCapacityCfg;
	private String blockNum;
	private String raid1MirrorNum;
	private String combineRaidNum;
	private String createdTime;
	private String parentDeviceNo;
	private String issueObjectNum;
	private String rebuildStatus;
	public String getVhdName() {
		return vhdName;
	}
	public void setVhdName(String vhdName) {
		this.vhdName = vhdName;
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
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getRaidLevel() {
		return raidLevel;
	}
	public void setRaidLevel(String raidLevel) {
		this.raidLevel = raidLevel;
	}
	public String getStripSize() {
		return stripSize;
	}
	public void setStripSize(String stripSize) {
		this.stripSize = stripSize;
	}
	public String getSimpleCfg() {
		return simpleCfg;
	}
	public void setSimpleCfg(String simpleCfg) {
		this.simpleCfg = simpleCfg;
	}
	public String getRwPermisstion() {
		return rwPermisstion;
	}
	public void setRwPermisstion(String rwPermisstion) {
		this.rwPermisstion = rwPermisstion;
	}
	public String getStoragePoolName() {
		return storagePoolName;
	}
	public void setStoragePoolName(String storagePoolName) {
		this.storagePoolName = storagePoolName;
	}
	public String getPoolSeqNo() {
		return poolSeqNo;
	}
	public void setPoolSeqNo(String poolSeqNo) {
		this.poolSeqNo = poolSeqNo;
	}
	public String getDeviceNo() {
		return deviceNo;
	}
	public void setDeviceNo(String deviceNo) {
		this.deviceNo = deviceNo;
	}
	public String getCapacityByte() {
		return capacityByte;
	}
	public void setCapacityByte(String capacityByte) {
		this.capacityByte = capacityByte;
	}
	public String getMaxCapacityCfg() {
		return maxCapacityCfg;
	}
	public void setMaxCapacityCfg(String maxCapacityCfg) {
		this.maxCapacityCfg = maxCapacityCfg;
	}
	public String getBlockNum() {
		return blockNum;
	}
	public void setBlockNum(String blockNum) {
		this.blockNum = blockNum;
	}
	public String getRaid1MirrorNum() {
		return raid1MirrorNum;
	}
	public void setRaid1MirrorNum(String raid1MirrorNum) {
		this.raid1MirrorNum = raid1MirrorNum;
	}
	public String getCombineRaidNum() {
		return combineRaidNum;
	}
	public void setCombineRaidNum(String combineRaidNum) {
		this.combineRaidNum = combineRaidNum;
	}
	public String getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}
	public String getParentDeviceNo() {
		return parentDeviceNo;
	}
	public void setParentDeviceNo(String parentDeviceNo) {
		this.parentDeviceNo = parentDeviceNo;
	}
	public String getIssueObjectNum() {
		return issueObjectNum;
	}
	public void setIssueObjectNum(String issueObjectNum) {
		this.issueObjectNum = issueObjectNum;
	}
	public String getRebuildStatus() {
		return rebuildStatus;
	}
	public void setRebuildStatus(String rebuildStatus) {
		this.rebuildStatus = rebuildStatus;
	}
	
	
	
	

}
