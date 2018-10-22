/**
 * 
 */
package com.yifeng.demo.boss.api.order.service;

import com.yifeng.demo.boss.api.order.detail.OrderDetail;
import com.yifeng.demo.boss.api.order.query.OrderQuery;

import next.rapid.page.PageResult;
import next.rapid.page.Pagination;

/**
 * 订单服务接口 
 * @author Administrator
 *
 */
public interface OrderService {
	
	/**
	 * 分页查询订单列表信息
	 * @param orderQuery 查询条件
	 * @param pagination 分页条件
	 * @return
	 */
	public PageResult<OrderDetail> listOrderByPage(OrderQuery orderQuery, Pagination pagination);
}
