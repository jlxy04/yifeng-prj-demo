/**
 * 
 */
package com.yifeng.demo.boss.util;

import java.util.Properties;

import com.yifeng.demo.boss.exception.UserException;

/**
 * 异常工具类
 * @author Administrator
 *
 */
public class ExceptionUtil {
	
	private static Properties properties = new Properties();
	
	/**
	 * 根据编码或者具体异常信息
	 * @param code
	 * @return
	 */
	public static String getExceptionByCode(String code) {
		return properties.getProperty(code);
	}
	
	public static void setProperties(Properties properties) {
		ExceptionUtil.properties = properties;
	}
	
	public static void throwUserException(String errCode) {
		throw new UserException(errCode, ExceptionUtil.getExceptionByCode(errCode));
	}
}
