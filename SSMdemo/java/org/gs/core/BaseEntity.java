package org.gs.core;

import java.util.Date;

public class BaseEntity {
	private Integer id;
	private String name;
	/**
	 * @fieldName: createDate
	 * @fieldType: Date
	 * @Description: 数据创建的日期
	 */
	private Date createtime;
	/**
	 * @fieldName: modifyDate
	 * @fieldType: Date
	 * @Description: 数据修改的日期
	 */
	private Date modifyDate;
	//attr1 attr2是为了以后扩展而预留的
	private String attr1;
	private String  attr2;
	
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date date) {
		this.modifyDate =date;
	}
	public String getAttr1() {
		return attr1;
	}
	public void setAttr1(String attr1) {
		this.attr1 = attr1;
	}
	public String getAttr2() {
		return attr2;
	}
	public void setAttr2(String attr2) {
		this.attr2 = attr2;
	}
	
	
}
