package com.yifeng.demo.boss.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.yifeng.demo.boss.api.user.model.UserModel;
import com.yifeng.demo.boss.api.user.query.UserQuery;
import com.yifeng.demo.boss.api.user.service.UserService;
import com.yifeng.demo.boss.dal.user.dao.UserDao;
import com.yifeng.demo.boss.dal.user.entity.UserEntity;

import next.rapid.RapidService;
import next.rapid.page.Pagination;

/**
 * 用户相关服务的实现
 * @author Administrator
 *
 */
@Service("/boss/userService")
public class UserServiceImpl extends RapidService implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public List<UserModel> listUserByPage(UserQuery userQuery, Pagination pagination) {
		PageHelper.startPage(pagination);
		Page<UserEntity> userList = (Page<UserEntity>) userDao.selectByPage(copy(userQuery, com.yifeng.demo.boss.dal.user.query.UserQuery.class));
		return copyList(userList, UserModel.class);
	}
	
	@Override
	public UserModel getUserById(String id) {
		return copy(userDao.selectById(id), UserModel.class);
	}
}
