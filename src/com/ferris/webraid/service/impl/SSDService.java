package com.ferris.webraid.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.ferris.webraid.model.SSD;
import com.ferris.webraid.service.ISSDService;

public class SSDService implements ISSDService {

	@Override
	public List<SSD> getSSDList() {
		// TODO Auto-generated method stub
		List<SSD> ssds = new ArrayList<SSD>();
		SSD ssd = new SSD();
		ssd.setSeqNo("seq1");
		ssd.setCapcity("100");
		ssd.setSsdName("name1");
		ssds.add(ssd);
		ssd = new SSD();
		ssd.setSeqNo("seq2");
		ssd.setCapcity("320");
		ssd.setSsdName("name2");
		ssds.add(ssd);
		ssd = new SSD();
		ssd.setSeqNo("seq2");
		ssd.setCapcity("500");
		ssd.setSsdName("name3");
		ssds.add(ssd);
		return ssds;
	}

	@Override
	public SSD getSSDDetail(String id) {
		// TODO Auto-generated method stub
		return new SSD();
	}

	@Override
	public boolean addSSD(SSD ssd) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteSSD(String id) {
		// TODO Auto-generated method stub
		return false;
	}

}
