package org.gs.model;

import org.gs.core.BaseEntity;

public class Video extends BaseEntity {
    



    private Integer time;

    private Integer spearkerId;

    private Integer courseId;

    private String videoUrl;

    private String imageUrl;

    private Integer playNum;

    private String detail;
    



    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public Integer getSpearkerId() {
        return spearkerId;
    }

    public void setSpearkerId(Integer spearkerId) {
        this.spearkerId = spearkerId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
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

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

	@Override
	public String toString() {
		return "Video [time=" + time + ", spearkerId=" + spearkerId + ", courseId=" + courseId + ", videoUrl="
				+ videoUrl + ", imageUrl=" + imageUrl + ", playNum=" + playNum + ", detail=" + detail + "]";
	}

    
}