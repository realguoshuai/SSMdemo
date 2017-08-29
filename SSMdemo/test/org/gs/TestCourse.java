package org.gs;

import java.util.List;

import org.gs.model.Course;
import org.gs.service.CourseService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-mvc.xml", "classpath:spring-mybatis.xml" })
@WebAppConfiguration
public class TestCourse {
	@Autowired
	private CourseService courseService;
	@Test
	public void testSelectByCourseId(){
		List<Course> list =courseService.queryAll(6);
		System.out.println("test>>>"+list);
	}
}
