package com.ferris.webraid.service;

import java.util.List;

import com.ferris.webraid.model.LayerVirtualHardDisk;

public interface ILayerVirtualHardDiskService {
	
	public List<LayerVirtualHardDisk> getLayerVirtualHardDiskList();
	
	public LayerVirtualHardDisk getLayerVirtualHardDiskDetail(String id);
	
	public boolean addLayerVirtualHardDisk(String id);
	
	public boolean deleteLayerVirtualHardDisk(String id);
	
	public boolean expandLayerVirtualHardDisk(String id);

}
