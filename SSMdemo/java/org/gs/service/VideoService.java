package org.gs.service;

import java.util.List;
import java.util.Map;

import org.gs.core.service.BaseService;
import org.gs.dao.VideoDao;
import org.gs.model.Video;
import org.gs.model.VideoSimple;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
public class VideoService extends BaseService<Video> {
	@Autowired
	private VideoDao videoDao;

	public List<VideoSimple> queryByCourseId(int courseId) {

		return videoDao.selectAllByCourseId(courseId);
	}
	public List<Video> queryByCourseIdForVideo(int courseId){
		return ( videoDao).selectAllForVideoByCourseId(courseId);
		
	}
	
	}

