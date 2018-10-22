package com.yifeng.demo.boss.service.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.yifeng.demo.boss.api.user.model.UserModel;
import com.yifeng.demo.boss.api.user.query.UserQuery;
import com.yifeng.demo.boss.api.user.service.UserService;
import com.yifeng.demo.boss.dal.user.dao.UserDao;
import com.yifeng.demo.boss.dal.user.entity.UserEntity;
import com.yifeng.demo.boss.exception.UserException;

import next.framework.mybatis.utils.ObjectId;
import next.rapid.RapidService;
import next.rapid.page.PageResult;
import next.rapid.page.Pagination;

/**
 * 用户相关服务的实现
 * @author Administrator
 *
 */
@Service("/boss/userService")
public class UserServiceImpl extends RapidService implements UserService {
	
	private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public PageResult<UserModel> listUserByPage(UserQuery userQuery, Pagination pagination) {
		PageHelper.startPage(pagination);
		Page<UserEntity> userList = (Page<UserEntity>) userDao.selectByPage(copy(userQuery, com.yifeng.demo.boss.dal.user.query.UserQuery.class));
		return new PageResult<>(copyList(userList, UserModel.class), userList.getTotal());
	}
	
	@Override
	public UserModel getUserById(String id) {
		return copy(userDao.selectById(id), UserModel.class);
	}
	
	@Override
	@Transactional(rollbackFor= {Exception.class})
	public void createUser(UserModel userModel) {
		userModel.setId(ObjectId.get().toString());
		userDao.insert(copy(userModel, UserEntity.class));
	}
	
	@Override
	@Transactional(rollbackFor= {Exception.class})
	public void updateUser(UserModel userModel) {
		log.info("更新用户信息{}", JSON.toJSONString(userModel));
		userDao.updateById(copy(userModel, UserEntity.class));
	}
	
	@Override
	@Transactional(rollbackFor= {Exception.class})
	public void deleteUserById(String id) {
		UserEntity userEntity = userDao.selectById(id);
		if(userEntity == null) {
			throw new UserException("100002");
		}
		userDao.deleteById(id);
	}
}
