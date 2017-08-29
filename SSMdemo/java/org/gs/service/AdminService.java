package org.gs.service;

import org.gs.core.service.BaseService;
import org.gs.dao.AdminDao;
import org.gs.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class AdminService  extends BaseService<Admin>{
/*	@Autowired
	private AdminDao adminDao;
	public int insert(Admin admin){
		int insert = adminDao.insert(admin);
		return insert;
	}
	*/
}
