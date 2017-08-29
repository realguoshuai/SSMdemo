package org.gs.dao;

import java.util.List;

import org.gs.core.dao.BaseDao;
import org.gs.model.Course;
import org.springframework.stereotype.Repository;
@Repository
public class CourseDao  extends BaseDao<Course>{
	public List<Course> selectAll(int subjectId){
		return sqlSessionTemplate.selectList(nameSpace+"selectAll", subjectId);
	}
	
}
