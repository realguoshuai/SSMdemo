package org.gs;

import java.util.List;
import java.util.Map;

import org.gs.model.VideoSimple;
import org.gs.service.VideoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-mybatis.xml","classpath:spring-mvc.xml"})
@WebAppConfiguration
public class TestVideo {
	@Autowired
	private VideoService videoService;
	@Test
	public void  testSelectByCourseId(){
		List<VideoSimple> list =videoService.queryByCourseId(6);
		System.out.println("test>>>>"+list);
	}
}

