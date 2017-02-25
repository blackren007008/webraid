package com.ferris.webraid.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

import com.ferris.webraid.model.StoragePool;
import com.ferris.webraid.service.IStoragePoolService;
import com.ferris.webraid.util.TableModel;
import com.opensymphony.xwork2.ActionSupport;

public class StoragePoolAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -12641514785126637L;

	private IStoragePoolService storagePoolService;
	
	private List<StoragePool> storagePoolList;
	
	private StoragePool storagePool;
	
	private InputStream inputStream;

	public IStoragePoolService getStoragePoolService() {
		return storagePoolService;
	}

	public void setStoragePoolService(IStoragePoolService storagePoolService) {
		this.storagePoolService = storagePoolService;
	}
	
	public String list(){
		storagePoolList = storagePoolService.getStoragePoolList();
		return SUCCESS;
	}
	
	public String listData() throws Exception{
		System.out.println("listData");
		inputStream = new ByteArrayInputStream("{\"total\": 100,\"rows\": [{\"id\": 0,\"name\": \"Item 0\",\"price\": \"$0\"}]}".getBytes("UTF-8"));
		storagePoolList = storagePoolService.getStoragePoolList();
		inputStream = TableModel.toJSONStream(storagePoolList);
		return SUCCESS;
	}
	
	public InputStream getResult() {
		System.out.println("getResult");
		return inputStream;
	}
	
	public String getDetail(){
		storagePool = storagePoolService.getStoragePoolDetail("");
		return SUCCESS;
	}

}
