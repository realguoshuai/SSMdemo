package org.gs;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.gs.model.User;
import org.gs.service.UserService;
import org.gs.util.Pager;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-mybatis.xml","classpath:spring-mvc.xml"})
@WebAppConfiguration
public class TestUser {
	@Autowired
	private UserService userService;
	@Test
	public void add(){
		User user =new User();
		user.setName("asdas");
		user.setGender(0);
		user.setBirthday(new Date());
		user.setCreatetime(new Date(System.currentTimeMillis()-86400000));
		user.setAddress("黄土高坡");
		user.setCode("5551");
		user.setEmail("haah@qq.com");
		user.setImgurl("http://www.baidu.com/image/test.png");
		user.setMobile("15617587262");
		user.setPwd("pwd123");
		userService.add(user);
		
	}
	@Test
	public void queryById(){
		User user = userService.queryById(4);
		System.out.println("test>>>"+user);
	}
	//1.
	/*@Test
	public void deleteById(){
		int user =userService.deleteById(1);
		System.out.println("删除了:>>>"+user);
	}*/
/*	//2.
	@Test
	public void updateById(){
		User user =new User();
		user.setId(3);//添加指定的值
		user.setName("lucy");
		user.setGender(0);
		user.setBirthday(new Date());
		user.setCreatetime(new Date(System.currentTimeMillis()-86400000));
		user.setAddress("青藏高原");
		user.setCode("007");
		user.setEmail("haah@qq.com");
		user.setImgurl("http://www.baidu.com/image/test.png");
		user.setMobile("15617587262");
		user.setPwd("pwd123");
		userService.updateById(user);
	}*/
	
	@Test
	public void removeByName(){
		userService.removeByName("%m");//调用UserService中的removeByName()
	}
	//查 参数是实参,不能给参数,参数直接在方法体中给出啦
	@Test
	public void selectById(){
		User user = userService.queryById(5);
		System.out.println(user);
	}
	//根据id查询一行
	@Test
	public void selectForMap(){
		Map<String, Map<String, Object>> value = userService.queryMap(4);
		System.out.println("test>>>>"+value);
	}
	@Test
	public void selectAny(){
		//先使用Map装载查询的条件,再把map当参数传入
		Map<String, String> params =new HashMap<>();
		params.put("columns", "id,name,address");
		params.put("conditions", "address like '黄%'");
		List<Map<String, Object>> result = userService.queryAny(params);
		System.out.println("test查询结果:>>>>"+result);
	}
	@Test
	public void selectPager(){
		Pager pager = new Pager();
		pager.setPageSize(3);
		Pager resultPager =userService.queryForPage(pager);
		System.out.println("第一页:"+resultPager);
		System.out.println("第二页"+userService.queryForPage(resultPager));
		System.out.println("第三页"+userService.queryForPage(resultPager));
	}
}
