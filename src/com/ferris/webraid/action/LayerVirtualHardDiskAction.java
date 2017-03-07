package com.ferris.webraid.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

import com.ferris.webraid.model.LayerVirtualHardDisk;
import com.ferris.webraid.service.ILayerVirtualHardDiskService;
import com.ferris.webraid.service.IVirtualHardDiskService;
import com.ferris.webraid.util.TableModel;
import com.opensymphony.xwork2.ActionSupport;

public class LayerVirtualHardDiskAction extends ActionSupport {
	
	private ILayerVirtualHardDiskService layerVhdService;
	
	private List<LayerVirtualHardDisk> layerVhdList;
	
	private LayerVirtualHardDisk layerVhd;
	
	private InputStream inputStream;
	
	public ILayerVirtualHardDiskService getlvhdService() {
		return layerVhdService;
	}

	public void setLayerVhdService(ILayerVirtualHardDiskService layerVhdService) {
		this.layerVhdService = layerVhdService;
	}
	
	public String list(){
		layerVhdList = layerVhdService.getLayerVirtualHardDiskList();
		return SUCCESS;
	}
	
	public String listData() throws Exception{
		System.out.println("listData");
		inputStream = new ByteArrayInputStream("{\"total\": 100,\"rows\": [{\"id\": 0,\"name\": \"Item 0\",\"price\": \"$0\"}]}".getBytes("UTF-8"));
		layerVhdList = layerVhdService.getLayerVirtualHardDiskList();
		inputStream = TableModel.toJSONStream(layerVhdList);
		return SUCCESS;
	}
	
	public InputStream getResult() {
		System.out.println("getResult");
		return inputStream;
	}
	
	public String getDetail(){
		layerVhd = layerVhdService.getLayerVirtualHardDiskDetail("");
		return SUCCESS;
	}

}
