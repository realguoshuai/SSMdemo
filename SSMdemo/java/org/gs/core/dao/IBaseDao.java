package org.gs.core.dao;

import java.util.List;
import java.util.Map;

public interface IBaseDao<T> {

    int insert(T t);

    int insertSelective(T t);
    
    int deleteByPrimaryKey(Integer id);
    
//    int deleteByCondition(String condition);

    int updateByPrimaryKeySelective(T t);

    int updateByPrimaryKey(T t);
    
    T selectByPrimaryKey(Integer id);
    
    Map<String,Map<String,Object>> selectMapById(Integer id);
    //TODO
    List<T> selectAll(String condition);
    
   List<Map<String, Object>> selectAllForMap(String condition);
    //TODO 查询任意行任意列,返回元素是map的list集合
   List<Map<String, Object>> seleteAny(Map<String,String> parameter);
    
}