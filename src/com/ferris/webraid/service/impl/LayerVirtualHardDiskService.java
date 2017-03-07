package com.ferris.webraid.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.ferris.webraid.model.LayerVirtualHardDisk;
import com.ferris.webraid.service.ILayerVirtualHardDiskService;

public class LayerVirtualHardDiskService implements ILayerVirtualHardDiskService {

	@Override
	public List<LayerVirtualHardDisk> getLayerVirtualHardDiskList() {
		List<LayerVirtualHardDisk> layerVhdList = new ArrayList<>();
		LayerVirtualHardDisk layerVhd1 = new LayerVirtualHardDisk();
		layerVhd1.setVhdName("lvhd1");
		layerVhd1.setSeqNo("seq1");
		
		LayerVirtualHardDisk layerVhd2 = new LayerVirtualHardDisk();
		layerVhd2.setVhdName("lvhd2");
		layerVhd2.setSeqNo("seq2");
		
		layerVhdList.add(layerVhd1);
		layerVhdList.add(layerVhd2);
		return layerVhdList;
	}

	@Override
	public LayerVirtualHardDisk getLayerVirtualHardDiskDetail(String id) {
		// TODO Auto-generated method stub
		return new LayerVirtualHardDisk();
	}

	@Override
	public boolean addLayerVirtualHardDisk(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteLayerVirtualHardDisk(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean expandLayerVirtualHardDisk(String id) {
		// TODO Auto-generated method stub
		return false;
	}

}
