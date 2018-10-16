package com.yifeng.demo.user.dal.user.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yifeng.demo.user.dal.user.entity.UserEntity;
import com.yifeng.demo.user.dal.user.query.UserQuery;

/**
 * 用户DAO
 * @author Administrator
 *
 */
public interface UserDao {
	
	/**
	 * 根据条件分页查询
	 * @param userQuery
	 * @return
	 */
	List<UserEntity> selectByPage(UserQuery userQuery);
	
	/**
	 * 根据主键查询
	 * @param id
	 * @return
	 */
    UserEntity selectById(@Param("id")String id);
    
    /**
     * 插入
     * @param userEntity
     * @return
     */
    int insert(UserEntity userEntity);
    
    /**
     * 根据主键更新
     * @param userEntity
     * @return
     */
    int updateById(UserEntity userEntity);
    
    /**
     * 根据ID删除用户
     * @param id
     * @return
     */
    int deleteById(@Param("id")String id);
}