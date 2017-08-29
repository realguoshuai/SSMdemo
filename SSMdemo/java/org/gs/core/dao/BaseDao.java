package org.gs.core.dao;


import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.gs.util.Pager;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;



//通过变量,


public class BaseDao <T> implements IBaseDao<T>{
	protected String nameSpace;
	public  BaseDao() {
		//目的获取泛型T的真实类型
		//通过反射
		Class<?> clz =getClass();//baseDao
		 Type gType = clz.getGenericSuperclass();//获取他的父类的类型
		if (gType instanceof ParameterizedType) {//如果实现ParameterizedType接口,即支持泛型
			ParameterizedType pType=(ParameterizedType) gType;
			Type[] aTypes = pType.getActualTypeArguments();//获取子类的真实类型参数
			if (aTypes!=null&&aTypes.length>0) {
				Type type = aTypes[0];
				String typeName = type.getTypeName();
				nameSpace=typeName+".";
			}
		}
	}
	
	@Autowired
	protected SqlSessionTemplate sqlSessionTemplate;
	//使用sqlSessionTemplate类.方法(拼接到xml中的对应方法,参数)
	@Override
	public int insert(T t) {
		return sqlSessionTemplate.insert(nameSpace+"insert",t);
	}

	@Override
	public int insertSelective(T t) {
		return sqlSessionTemplate.insert(nameSpace+"insertSelective",t);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return sqlSessionTemplate.delete(nameSpace+"deleteByPrimaryKey",id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(T t) {
		return sqlSessionTemplate.update(nameSpace+"updateByPrimaryKeySelective",t);
	}

	@Override
	public int updateByPrimaryKey(T t) {
		return sqlSessionTemplate.update(nameSpace+"updateByPrimaryKey,t");
	}

	@Override
	public T selectByPrimaryKey(Integer id) {
		return sqlSessionTemplate.selectOne(nameSpace+"selectByPrimaryKey", id);
	}
//Map<String,Map<String,Object>> Map<String,Map<String,Object>作为外面Map的value> 
	@Override
	public Map<String,Map<String,Object>> selectMapById(Integer id) {
		return sqlSessionTemplate.selectMap(nameSpace+"selectMapById", id,"id");//没有单独两个参数,写一个凑数
	}

	@Override
	public List<T> selectAll(String condition) {
		return sqlSessionTemplate.selectList(nameSpace+"selectAll",condition);
	}

	@Override
	public List<Map<String, Object>> selectAllForMap(String condition) {
		 return sqlSessionTemplate.selectList(nameSpace+"selectAllForMap", condition);
	}
//	public Map<String,Map<String,Object>> selectListById(Integer id) {
//		return sqlSessionTemplate.selectList(nameSpace+"selectMapById", id,"id");//没有单独两个参数,写一个凑数
//	}
//参数中	Map<String,String>
	
	
	public List<Map<String, Object>> seleteAny(Map<String,String> parameter){
		return sqlSessionTemplate.selectList(nameSpace+"selectAny", parameter);
	}
	//分页查询
	public Pager selectAllForPager(Pager pager){
		pager.setCount(selectCount());
		List<?> results =sqlSessionTemplate.selectList(nameSpace+
				"selectAllForPager",null,new RowBounds(pager.getStart(),pager.getPageSize()));
		pager.setResults(results);
		return pager;
	}
	protected int selectCount(){
		Integer count =sqlSessionTemplate.selectOne(nameSpace+"selectCount");
		return count;
	}
}
