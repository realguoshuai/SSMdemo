package org.gs.core.service;

import java.util.List;
import java.util.Map;

import org.gs.util.Pager;

public interface IBaseService<T> {

    int add(T t);

    int addSelective(T t);
    
    int removeById(Integer id);
    
    int editById(T t);

    int editByIdSelective(T t);
    
    T queryById(Integer id);
    
    Map<String,Map<String,Object>> queryAnyById(Integer id);
    
    List<T> queryAll(String condition);
    
    List<Map<String, Object>> queryAllForMap(String condition);
   
    List<Map<String, Object>> queryAny(Map<String,String> parameter);
     
    Pager queryForPage(Pager pager);
}