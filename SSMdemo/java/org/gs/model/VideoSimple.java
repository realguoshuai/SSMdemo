package org.gs.model;

/**
 * @ClassName: VideoSimple 
 * @Description: 如果暂展示的数据跟数据的详情差距(字段类型)差距很大
 * 通常会新创建一个类,只是保存基本的字段,用来展示和数据库没有关系
 * 大白话: simple只保留展示的数据
 * @author: guoshuai
 * @date: 2017年8月24日 下午3:02:23
 */
public class VideoSimple {
	private Integer id;
	private String name;
	private Integer time;
	private String imageUrl;
	private Integer playNum;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getTime() {
		return time;
	}
	public void setTime(Integer time) {
		this.time = time;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public Integer getPlayNum() {
		return playNum;
	}
	public void setPlayNum(Integer playNum) {
		this.playNum = playNum;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "VideoSimple [id=" + id + ", name=" + name + ", time=" + time + ", imageUrl=" + imageUrl + ", playNum="
				+ playNum + "]";
	}
	
}
