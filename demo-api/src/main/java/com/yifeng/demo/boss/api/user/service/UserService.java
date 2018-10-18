/**
 * 
 */
package com.yifeng.demo.boss.api.user.service;

import java.util.List;

import com.yifeng.demo.boss.api.user.model.UserModel;
import com.yifeng.demo.boss.api.user.query.UserQuery;

import next.rapid.page.Pagination;

/**
 * 用户相关服务
 * @author Administrator
 *
 */
public interface UserService {
	
	/**
	 * 根据条件分页查询
	 * @param userQuery 查询条件
	 * @param pagination 分页条件
	 * @return 返回结果用户列表
	 */
	public List<UserModel> listUserByPage(UserQuery userQuery, Pagination pagination);
	
	/**
	 * 根据用户ID查询单个用户信息
	 * @param id 用户ID
	 * @return 返回用户详情
	 */
	public UserModel getUserById(String id);
	
	/**
	 * 创建用户
	 * @param userModel 用户信息
	 * @return
	 */
	public void createUser(UserModel userModel);
}
