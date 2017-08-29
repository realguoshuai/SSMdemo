package org.gs.service;

import java.util.List;

import org.gs.core.service.BaseService;
import org.gs.dao.CourseDao;
import org.gs.dao.VideoDao;
import org.gs.model.Course;
import org.gs.model.VideoSimple;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CourseService extends BaseService<Course>{
	@Autowired
	private CourseDao courseDao;
	@Autowired
	private VideoDao videoDao;
	
	public List<Course> queryAll(int subjectId){
		List<Course> list  =courseDao .selectAll(subjectId);
		for (int i = 0,size=list.size(); i < size; i++) {
			Course course =list.get(i);
			int courseId =course.getId();
			List<VideoSimple> videoList = 
					videoDao.selectAllByCourseId(courseId);
			course.setVideoList(videoList);
		}
		return list;
		
	}
}
