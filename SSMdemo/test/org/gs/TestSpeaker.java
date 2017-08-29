package org.gs;

import org.gs.model.Speaker;
import org.gs.service.SpeakerService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-mvc.xml", "classpath:spring-mybatis.xml" })
@WebAppConfiguration
public class TestSpeaker {

	@Autowired
	private SpeakerService service;
	
	@Test
	public void testQuery(){
		Speaker speaker = service.queryById(9);
		System.out.println("test>>>"+speaker);
	}
}
