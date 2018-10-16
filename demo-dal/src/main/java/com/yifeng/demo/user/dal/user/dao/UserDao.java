package com.yifeng.demo.user.dal.user.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yifeng.demo.user.dal.user.entity.UserEntity;

/**
 * 用户DAO
 * @author Administrator
 *
 */
public interface UserDao {
	
	List<UserEntity> selectByPage();
	
	/**
	 * 根据主键查询
	 * @param id
	 * @return
	 */
    UserEntity selectById(@Param("id")String id);

}