/**
 * 
 */
package com.yifeng.demo.boss.dal.order.data;

import com.yifeng.demo.boss.dal.order.entity.OrderEntity;

/**
 * 订单查询结果对象
 * @author Administrator
 *
 */
public class OrderDataDo extends OrderEntity {

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
