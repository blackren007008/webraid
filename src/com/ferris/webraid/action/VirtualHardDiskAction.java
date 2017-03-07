package com.ferris.webraid.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

import com.ferris.webraid.model.VirtualHardDisk;
import com.ferris.webraid.service.IVirtualHardDiskService;
import com.ferris.webraid.util.TableModel;
import com.opensymphony.xwork2.ActionSupport;

public class VirtualHardDiskAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5204071832091797314L;

	private IVirtualHardDiskService vhdService;
	
	private List<VirtualHardDisk> vhdList;
	
	private VirtualHardDisk vhd;
	
	private InputStream inputStream;

	public IVirtualHardDiskService getVhdService() {
		return vhdService;
	}

	public void setVhdService(IVirtualHardDiskService vhdService) {
		this.vhdService = vhdService;
	}
	
	public String list(){
		vhdList = vhdService.getVirtualHardDiskList();
		return SUCCESS;
	}
	
	public String listData() throws Exception{
		System.out.println("listData");
		inputStream = new ByteArrayInputStream("{\"total\": 100,\"rows\": [{\"id\": 0,\"name\": \"Item 0\",\"price\": \"$0\"}]}".getBytes("UTF-8"));
		vhdList = vhdService.getVirtualHardDiskList();
		inputStream = TableModel.toJSONStream(vhdList);
		return SUCCESS;
	}
	
	public InputStream getResult() {
		System.out.println("getResult");
		return inputStream;
	}
	
	public String getDetail(){
		vhd = vhdService.getVirtualHardDiskDetail("");
		return SUCCESS;
	}

}
