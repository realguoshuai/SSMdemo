package org.gs.model;

import org.gs.core.BaseEntity;

public class Speaker extends BaseEntity {
   

    private String speakerJob;

    private String headImgUrl;

    private String speakerDesc;


    public String getSpeakerJob() {
        return speakerJob;
    }

    public void setSpeakerJob(String speakerJob) {
        this.speakerJob = speakerJob;
    }

    public String getHeadImgUrl() {
        return headImgUrl;
    }

    public void setHeadImgUrl(String headImgUrl) {
        this.headImgUrl = headImgUrl;
    }

    public String getSpeakerDesc() {
        return speakerDesc;
    }

    public void setSpeakerDesc(String speakerDesc) {
        this.speakerDesc = speakerDesc;
    }

	@Override
	public String toString() {
		return "Speaker [speakerJob=" + speakerJob + ", headImgUrl=" + headImgUrl + ", speakerDesc=" + speakerDesc
				+ "]";
	}
    
}