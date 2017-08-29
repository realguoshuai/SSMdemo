package org.gs.dao;

import org.gs.core.dao.BaseDao;
import org.gs.model.Admin;
import org.springframework.stereotype.Repository;
@Repository
public class AdminDao extends BaseDao<Admin>{
	public int  insert(Admin admin){
		return sqlSessionTemplate.insert(
				nameSpace+"insert",admin);
	}

}
