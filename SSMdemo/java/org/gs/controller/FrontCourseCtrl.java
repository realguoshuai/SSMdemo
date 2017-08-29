package org.gs.controller;

import java.util.List;

import org.gs.model.Course;
import org.gs.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//表示这个路径下的都由Controller处理
@Controller
//与这里面的方法进行拼接
@RequestMapping("/front/course")
public class FrontCourseCtrl {
//自动注入
	@Autowired
	private CourseService courseService;
	//映射关系
	@RequestMapping("/index.do")
	public String courseIndex(Model model,int subjectId) {
		List<Course> list = courseService.queryAll(subjectId);
		model.addAttribute("list",list);
		return "front/course/index";
	}
}
