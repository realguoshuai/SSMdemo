package org.gs.core.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.gs.core.dao.BaseDao;
import org.gs.util.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

public class BaseService<T> implements IBaseService<T> {
	@Autowired
	protected BaseDao<T> baseDao;
	public int add(T t) {
		return baseDao.insert(t);
	}
	public T queryById(int id) {
		return baseDao.selectByPrimaryKey(id);
	}
	public Map<String,Map<String,Object>> queryMap(Integer id){
		return baseDao.selectMapById(id);
	}
	//增添查询任意的方法
	public List<Map<String, Object>> queryAny(Map<String, String> parameter){
		return baseDao.seleteAny(parameter);
	}
	
	@Override
	public int addSelective(T t) {
		return baseDao.insertSelective(t);
	}
	@Override
	public int removeById(Integer id) {
		return baseDao.deleteByPrimaryKey(id);
	}
	@Override
	public int editById(T t) {
		return baseDao.updateByPrimaryKey(t);
	}
	@Override
	public int editByIdSelective(T t) {
		return baseDao.updateByPrimaryKeySelective(t);
	}
	@Override
	public T queryById(Integer id) {
		return baseDao.selectByPrimaryKey(id);
	}
	
	@Override
	public Map<String, Map<String, Object>> queryAnyById(Integer id) {
		// TODO Auto-generated method stub
		Map<String, String> parameter =new HashMap<>();
		parameter.put("column", "*");
		parameter.put("condition", "id="+id);
		return null;
	}
	
	@Override
	public List<T> queryAll(String condition) {
		return baseDao.selectAll(condition);
	}
	
	@Override
	public List<Map<String, Object>> queryAllForMap(String condition) {
		return baseDao.selectAllForMap(condition);
	}
	@Override
	public Pager queryForPage(Pager pager) {
		// TODO Auto-generated method stub
		return baseDao.selectAllForPager(pager);
	}
	
}
