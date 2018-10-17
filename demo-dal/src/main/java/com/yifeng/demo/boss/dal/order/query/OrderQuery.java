/**
 * 
 */
package com.yifeng.demo.boss.dal.order.query;

import java.util.List;

/**
 * 订单查询条件
 * @author Administrator
 *
 */
public class OrderQuery {
	
	/**
	 * 订单编码
	 */
	private String orderCode;
	
	/**
	 * 渠道编码集合
	 */
	private List<String> channelCodes;
	
	/**
	 * 订单创建开始时间
	 */
	private String startCrateTime;
	
	/**
	 * 订单创建结束时间
	 */
	private String endCreateTime;

	public String getOrderCode() {
		return orderCode;
	}

	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}

	public List<String> getChannelCodes() {
		return channelCodes;
	}

	public void setChannelCodes(List<String> channelCodes) {
		this.channelCodes = channelCodes;
	}

	public String getStartCrateTime() {
		return startCrateTime;
	}

	public void setStartCrateTime(String startCrateTime) {
		this.startCrateTime = startCrateTime;
	}

	public String getEndCreateTime() {
		return endCreateTime;
	}

	public void setEndCreateTime(String endCreateTime) {
		this.endCreateTime = endCreateTime;
	}
}
