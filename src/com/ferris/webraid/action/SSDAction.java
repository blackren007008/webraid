package com.ferris.webraid.action;

import java.util.ArrayList;
import java.util.List;

import com.ferris.webraid.model.SSD;
import com.ferris.webraid.service.ISSDService;
import com.opensymphony.xwork2.ActionSupport;

public class SSDAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1799509633365146558L;
	private ISSDService ssdService;
	private List<SSD> ssds;
	private SSD ssd;

	public ISSDService getSsdService() {
		return ssdService;
	}

	public void setSsdService(ISSDService ssdService) {
		this.ssdService = ssdService;
	}
	
	public String list(){
		ssds = ssdService.getSSDList();
		return SUCCESS;
	}
	
	public String getDetail(){
		ssd = ssdService.getSSDDetail("");
		return SUCCESS;
	}
}
