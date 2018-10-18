package com.yifeng.demo.boss.api.order.query;

import java.util.List;

/**
 * 订单列表查询条件
 * @author Administrator
 *
 */
public class OrderQuery {
	
	/**
	 * 订单编码
	 */
	private String orderCode;
	
	/**
	 * 渠道集合
	 */
	private List<String> channelCodes;
	
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
}
