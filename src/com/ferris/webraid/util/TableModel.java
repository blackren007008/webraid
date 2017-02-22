package com.ferris.webraid.util;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

import net.sf.json.JSONObject;

public class TableModel {
	private Integer total;
	private List<? extends Object> rows;
	
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public List<? extends Object> getRows() {
		return rows;
	}
	public void setRows(List<? extends Object> rows) {
		this.rows = rows;
	}
	
	public static InputStream toJSONStream(List<? extends Object> objects) throws Exception{
		TableModel tm = new TableModel();
		tm.setTotal(objects.size());
		tm.setRows(objects);
		JSONObject jsonObj = JSONObject.fromObject(tm);
		InputStream inputStream = new ByteArrayInputStream(jsonObj.toString().getBytes("UTF-8"));
		return inputStream;
	}
}
