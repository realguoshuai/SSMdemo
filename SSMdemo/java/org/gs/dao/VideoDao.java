package org.gs.dao;

import java.util.List;
import java.util.Map;

import org.gs.core.dao.BaseDao;
import org.gs.model.Video;
import org.gs.model.VideoSimple;
import org.springframework.stereotype.Repository;
@Repository
public class VideoDao extends BaseDao<Video> {
	public List<VideoSimple> selectAllByCourseId(int courseId){
		return 	sqlSessionTemplate.selectList(nameSpace+"selectAllByCourseId",courseId);
	}

	public List<Video> selectAllForVideoByCourseId(int courseId) {
		
		return null;
	}
}	
