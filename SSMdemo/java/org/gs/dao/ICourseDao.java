package org.gs.dao;

import java.util.List;

import org.gs.model.Course;

public interface ICourseDao {
	List<Course> selectAll(int subjectId);
}
