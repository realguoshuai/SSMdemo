package org.gs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.gs.model.User;
import org.gs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class FrontUserCtrl {
	@Autowired
	private UserService userService;
	
	@RequestMapping("register.do")
	public String insert(Model model,User user){
		 int insert = userService.insert(user);
		model.addAttribute("insert",insert);
		return "front/index";
	}
	
	/*@RequestMapping("login.do")
	public String select(Model model,Integer userId){
		User user = userService.queryById(userId);
		model.addAttribute("user",user);
		return "front/user/index";
	}*/
	
	//TODO
	@RequestMapping("login.do")
	public String login(String email,String password,HttpSession session){
		//System.out.println(pwd);
		System.out.println("+++++++"+password);
		String login = userService.login(email, password);
		System.out.println(login+">>>");
		System.out.println(">>>"+login);
		if (login!=null) {
			//替换
			session.setAttribute("_userAccount", login);
		}

		return "front/index";
	}
	

}






