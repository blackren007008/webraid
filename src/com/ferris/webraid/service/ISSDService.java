package com.ferris.webraid.service;

import java.util.List;

import com.ferris.webraid.model.SSD;

public interface ISSDService {
	public List<SSD> getSSDList();
	public SSD getSSDDetail(String id);
	public boolean addSSD(SSD ssd);
	public boolean deleteSSD(String id);
}
