package com.ferris.webraid.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.ferris.webraid.model.VirtualHardDisk;
import com.ferris.webraid.service.IVirtualHardDiskService;

public class VirtualHardDiskService implements IVirtualHardDiskService {

	@Override
	public List<VirtualHardDisk> getVirtualHardDiskList() {
		List<VirtualHardDisk> vhdList = new ArrayList<>();
		VirtualHardDisk vhd1 = new VirtualHardDisk();
		vhd1.setVhdName("vhdName1");
		vhd1.setSeqNo("seq1");
		
		VirtualHardDisk vhd2 = new VirtualHardDisk();
		vhd2.setVhdName("vhdName2");
		vhd2.setSeqNo("seq2");
		
		vhdList.add(vhd1);
		vhdList.add(vhd2);
		return vhdList;
	}

	@Override
	public VirtualHardDisk getVirtualHardDiskDetail(String id) {
		// TODO Auto-generated method stub
		return new VirtualHardDisk();
	}

	@Override
	public boolean addVirtualHardDisk(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteVirtualHardDisk(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean expandVirtualHardDisk(String id) {
		// TODO Auto-generated method stub
		return false;
	}

}
