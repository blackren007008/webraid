package com.ferris.webraid.service;

import java.util.List;

import com.ferris.webraid.model.StoragePool;

public interface IStoragePoolService {
	
	public List<StoragePool> getStoragePoolList();
	
	public StoragePool getStoragePoolDetail(String id);
	
	public boolean addStoragePool(String id);
	
	public boolean deleteStoragePool(String id);

}
