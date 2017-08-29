package org.gs.dao;

import java.util.List;
import java.util.Map;

import org.gs.core.dao.BaseDao;
import org.gs.model.Admin;
import org.gs.model.User;
import org.springframework.stereotype.Repository;


@Repository
public class UserDao extends BaseDao<User> {


	public int deleteByName(String name) {
		return sqlSessionTemplate.delete(nameSpace + "deleteByName", name);
	}

	public Map<String, Object> selectSome(Map<String, String> map) {
		return sqlSessionTemplate.selectMap(nameSpace + "selectSome", map, "id");
	}
	//登录
	public List<Map<String, Object>>  selectByEmail(String email) {
		return sqlSessionTemplate.selectList(nameSpace + "selectByEmail", email);
	}
	
	//注册
	public int  insert(Admin admin){
		return sqlSessionTemplate.insert(
				nameSpace+"insert",admin);
	}
	
	//登录
	/*public List<User>  seleteAny(User user){
		return sqlSessionTemplate.selectList(nameSpace+"selectAny", user);
	}*/
/*	public Map<String, Object> selectMap(Map<String,String> map){
		return  sqlSessionTemplate.selectMap(nameSpace+"select",map);
		return  (User) sqlSessionTemplate.selectList(nameSpace+"selectAll",user);
	}*/
}
