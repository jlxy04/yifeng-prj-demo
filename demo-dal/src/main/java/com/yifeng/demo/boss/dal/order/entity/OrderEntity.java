/**
 * 
 */
package com.yifeng.demo.boss.dal.order.entity;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 订单实体类
 * @author Administrator
 *
 */
public class OrderEntity {
	
	private String id;
	
	/**
	 * 订单编码
	 */
	private String orderCode;
	
	/**
	 * 渠道编码
	 */
	private String channelCode;
	
	/**
	 * 仓库编码
	 */
	private String warehouseCode;
	
	/**
	 * 状态
	 */
	private String status;
	
	/**
	 * 应收金额
	 */
	private BigDecimal needReceiveAmount; 
	
	/**
	 * 客户应付金额
	 */
	private BigDecimal customerNeedPayAmount;
	
	/**
	 * 商品总金额
	 */
	private BigDecimal goodsTotalAmount;
	
	/**
	 * 创建时间
	 */
	private Date createTime;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOrderCode() {
		return orderCode;
	}

	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}

	public String getChannelCode() {
		return channelCode;
	}

	public void setChannelCode(String channelCode) {
		this.channelCode = channelCode;
	}

	public String getWarehouseCode() {
		return warehouseCode;
	}

	public void setWarehouseCode(String warehouseCode) {
		this.warehouseCode = warehouseCode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public BigDecimal getNeedReceiveAmount() {
		return needReceiveAmount;
	}

	public void setNeedReceiveAmount(BigDecimal needReceiveAmount) {
		this.needReceiveAmount = needReceiveAmount;
	}

	public BigDecimal getCustomerNeedPayAmount() {
		return customerNeedPayAmount;
	}

	public void setCustomerNeedPayAmount(BigDecimal customerNeedPayAmount) {
		this.customerNeedPayAmount = customerNeedPayAmount;
	}

	public BigDecimal getGoodsTotalAmount() {
		return goodsTotalAmount;
	}

	public void setGoodsTotalAmount(BigDecimal goodsTotalAmount) {
		this.goodsTotalAmount = goodsTotalAmount;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}
