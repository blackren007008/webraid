package com.ferris.webraid.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.ferris.webraid.model.StoragePool;
import com.ferris.webraid.service.IStoragePoolService;

public class StoragePoolService implements IStoragePoolService {

	@Override
	public List<StoragePool> getStoragePoolList() {
		List<StoragePool> spList = new ArrayList<>();
		StoragePool sp1 = new StoragePool();
		sp1.setStoragePoolName("pool1");
		sp1.setSeqNo("seq1");
		
		StoragePool sp2 = new StoragePool();
		sp2.setStoragePoolName("pool2");
		sp2.setSeqNo("seq2");
		
		spList.add(sp1);
		spList.add(sp2);
		return spList;
	}

	@Override
	public StoragePool getStoragePoolDetail(String id) {
		// TODO Auto-generated method stub
		return new StoragePool();
	}

	@Override
	public boolean addStoragePool(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delteStoragePool(String id) {
		// TODO Auto-generated method stub
		return false;
	}

}
