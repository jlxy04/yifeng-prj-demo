package com.yifeng.demo.boss.dal.order.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yifeng.demo.boss.dal.order.data.OrderDataDo;
import com.yifeng.demo.boss.dal.order.entity.OrderEntity;
import com.yifeng.demo.boss.dal.order.query.OrderQuery;

/**
 * 用户DAO
 * @author Administrator
 *
 */
public interface OrderDao {
	
	/**
	 * 根据条件分页查询
	 * @param userQuery
	 * @return
	 */
	List<OrderDataDo> selectByPage(OrderQuery orderQuery);
	
	/**
	 * 根据主键查询
	 * @param id
	 * @return
	 */
	OrderEntity selectById(@Param("id")String id);
    
    /**
     * 插入
     * @param userEntity
     * @return
     */
    int insert(OrderEntity userEntity);
    
    /**
     * 根据主键更新
     * @param userEntity
     * @return
     */
    int updateById(OrderEntity userEntity);
    
    /**
     * 根据ID删除用户
     * @param id
     * @return
     */
    int deleteById(@Param("id")String id);
}