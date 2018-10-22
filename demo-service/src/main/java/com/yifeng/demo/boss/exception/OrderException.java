/**
 * 
 */
package com.yifeng.demo.boss.exception;

import com.yifeng.demo.boss.util.ExceptionUtil;

import next.rapid.exception.BaseException;

/**
 * 订单异常类
 * @author Administrator
 *
 */
public class OrderException extends BaseException {

	private static final long serialVersionUID = -6577192150785272677L;

	public OrderException() {
		super();
	}
	
	public OrderException(String code) {
		super(code, ExceptionUtil.getExceptionByCode(code), OrderException.class);
	}
}
