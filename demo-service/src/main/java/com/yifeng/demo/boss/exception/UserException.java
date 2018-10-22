/**
 * 
 */
package com.yifeng.demo.boss.exception;

import com.yifeng.demo.boss.util.ExceptionUtil;

import next.rapid.exception.BaseException;

/**
 * 用户异常类
 * @author Administrator
 *
 */
public class UserException extends BaseException {

	private static final long serialVersionUID = 2063608826268317889L;

	public UserException() {
		super();
	}
	
	public UserException(String code) {
		super(code, ExceptionUtil.getExceptionByCode(code), UserException.class);
	}
}
