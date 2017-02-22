package com.ferris.webraid.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import com.ferris.webraid.model.SSD;
import com.ferris.webraid.service.ISSDService;
import com.ferris.webraid.util.TableModel;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class SSDAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1799509633365146558L;
	private ISSDService ssdService;
	private List<SSD> ssds;
	private SSD ssd;
	private InputStream inputStream;
	private int limit;
	private int offset;
	private String order;

	public ISSDService getSsdService() {
		return ssdService;
	}

	public void setSsdService(ISSDService ssdService) {
		this.ssdService = ssdService;
	}
	
	public String list(){
		System.out.println("list");
		ssds = ssdService.getSSDList();
		return SUCCESS;
	}
	
	public String listData() throws Exception{
		System.out.println("listData");
		inputStream = new ByteArrayInputStream("{\"total\": 100,\"rows\": [{\"id\": 0,\"name\": \"Item 0\",\"price\": \"$0\"}]}".getBytes("UTF-8"));
		ssds = ssdService.getSSDList();
		inputStream = TableModel.toJSONStream(ssds);
		return SUCCESS;
	}
	public InputStream getResult() {
		System.out.println("getResult");
		return inputStream;
	}
	
	public String getDetail(){
		ssd = ssdService.getSSDDetail("");
		return SUCCESS;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	
}
