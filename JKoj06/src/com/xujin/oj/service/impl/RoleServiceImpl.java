package com.xujin.oj.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xujin.oj.dao.RoleDao;
import com.xujin.oj.dao.UserDao;
import com.xujin.oj.model.CmsException;
import com.xujin.oj.model.Role;
import com.xujin.oj.model.User;
import com.xujin.oj.service.RoleService;

/**
 * @Description:RoleService的实现类
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2013-12-14(创建日期)
 */
@Service("roleService")
public class RoleServiceImpl implements RoleService {
	
	@Resource(name="roleDao")
	private RoleDao roleDao;
	
	@Resource(name="userDao")
	private UserDao userDao;
	

	@Override
	public void add(Role role) {
       this.roleDao.add(role);
		
	}

	@Override
	public void delete(int id) {

	    List<User> users =this.userDao.listRoleUsers(id);
	    if(users!=null&&users.size()>0) throw new CmsException("删除的角色中，还有用户");
	    this.roleDao.delete(id);
	}

	@Override
	public void update(Role role) {

		this.roleDao.update(role);
	}

	@Override
	public Role load(int id) {
		
		return this.roleDao.load(id);
	}

	@Override
	public List<Role> listRole() {
		return this.roleDao.listRole();
	}

	@Override
	public void deleteRoleUsers(int rid) {
		// TODO Auto-generated method stub
      this.roleDao.deleteRoleUsers(rid);
	}

}
