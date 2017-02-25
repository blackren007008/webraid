package com.ferris.webraid.service;

import java.util.List;

import com.ferris.webraid.model.VirtualHardDisk;

public interface IVirtualHardDiskService {
	
	public List<VirtualHardDisk> getStoragePoolList();
	
	public VirtualHardDisk getStoragePoolDetail(String id);
	
	public boolean addStoragePool(String id);
	
	public boolean delteStoragePool(String id);
	
	public boolean expandStorgePool(String id);


}
