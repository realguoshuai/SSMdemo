package org.gs.model;

import java.util.List;
import java.util.Map;

import org.gs.core.BaseEntity;

public class Course extends BaseEntity {
  
    private Integer subjectId;

    private String courseDesc;

    //新加
    /**
     * @fieldName: videoList
     * @fieldType: List<Map<String,Object>>
     * @Description: 展示的Video
     */
    private List<VideoSimple> videoList;
    
    
   
  
	public List<VideoSimple> getVideoList() {
		return videoList;
	}

	public void setVideoList(List<VideoSimple> videoList) {
		this.videoList = videoList;
	}

	public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public String getCourseDesc() {
        return courseDesc;
    }

    public void setCourseDesc(String courseDesc) {
        this.courseDesc = courseDesc;
    }
}