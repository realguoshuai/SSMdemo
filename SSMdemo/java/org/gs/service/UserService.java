package org.gs.service;

import java.util.List;
import java.util.Map;

import org.gs.core.service.BaseService;
import org.gs.dao.UserDao;
import org.gs.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService extends BaseService<User> {
	@Autowired
	private UserDao userDao;

	public int removeByName(String condition) {
		return userDao.deleteByName(condition);
	}

	// 注册
	public int insert(User user) {
		return userDao.insert(user);
	}
	//
	/*public String login(String email,String password) {
		 List<Map<String, Object>> selectByEmail = userDao.selectByEmail(email);
		 if (selectByEmail!=null) {
			Map<String, Object> map = selectByEmail.get(0);
			System.out.println(">>>"+map);
			String pwd = (String) map.get("pwd");
			System.out.println(pwd);
			if (password==null) {
				return null;
			}
			if (password.equals(pwd)) {
				System.out.println(map.get("name"));
				return (String) map.get("name");
			}
		}
		 
		//System.out.println(">>>>"+pwd);
		return null;
	}*/
	public String login(String email,String password) {
		 List<Map<String, Object>> selectByEmail = userDao.selectByEmail(email);
		 if (selectByEmail!=null) {
			Map<String, Object> map = selectByEmail.get(0);
			System.out.println(">>>"+map);
			String pwd = (String) map.get("pwd");
			System.out.println(pwd);
			if (password==null) {
				return null;
			}
			if (password.equals(pwd)) {
				System.out.println("655"+map.get("name"));
				return (String) map.get("name");
			}
		}
		 
		//System.out.println(">>>>"+pwd);
		return null;
	}
	
	// 登录
/*	public List<User> select(User user) {
		return userDao.seleteAny(user);
	}*/
	// public Map<String, Object>selectAll(User user){
	// return userDao.selectSome(user);
	// }
	//

	/*
	 * public UserService(){ //子类中给父类中的baseDao赋值 //不适用代码块是因为代码块执行顺序太靠前 还没赋值就赋值,
	 * //运行结果空指针 baseDao =userDao; }
	 * 
	 * //实现一个方法,需要先在service中调用userMapper的封装好的方法,再在测试类中测试运行 //1.删除 public int
	 * deleteById(Integer id) { return userDao.deleteByPrimaryKey(id); } //2.更新
	 * public void updateById(User user){ userDao.updateByPrimaryKey(user); }
	 * //3.根据名字删除
	 */

}
