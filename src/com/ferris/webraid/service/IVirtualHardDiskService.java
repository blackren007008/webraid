package com.ferris.webraid.service;

import java.util.List;

import com.ferris.webraid.model.VirtualHardDisk;

public interface IVirtualHardDiskService {
	
	public List<VirtualHardDisk> getVirtualHardDiskList();
	
	public VirtualHardDisk getVirtualHardDiskDetail(String id);
	
	public boolean addVirtualHardDisk(String id);
	
	public boolean deleteVirtualHardDisk(String id);
	
	public boolean expandVirtualHardDisk(String id);


}
