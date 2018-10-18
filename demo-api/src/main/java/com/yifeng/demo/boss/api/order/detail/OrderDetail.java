/**
 * 
 */
package com.yifeng.demo.boss.api.order.detail;

import com.yifeng.demo.boss.api.order.model.OrderModel;

/**
 * 订单查询的详情
 * @author Administrator
 *
 */
public class OrderDetail extends OrderModel {
	
	/**
	 * 订单关联的用户名
	 */
	private String userName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
