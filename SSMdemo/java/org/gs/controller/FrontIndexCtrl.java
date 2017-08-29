package org.gs.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
 * @ClassName: FrontIndexCtrl 
 * @Description: TODO
 * @author: guoshuai
 * @date: 2017年8月24日 上午9:44:56  
 */
@Controller
public class FrontIndexCtrl {
//	对应一次请求
	@RequestMapping("/index.do")
	public String frontIndex(){
		Logger.getLogger(getClass()).info("front>>>>>>>>>>>>>>>>>>>>>>>>>用户请求了前端index页面");
		return "front/index";
	}

}
